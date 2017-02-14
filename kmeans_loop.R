kmeans_all<- c()
for(i in 1:8){
  kmeans_all[i] <- (kmeans(t(assay(vsd)), centers = i))
}




cluster_all<- c()
for(i in 1:8){
  cluster_all[i]<- (as.factor(unlist(kmeans_all[i])))
  }


for(i in 1:8){
  cluster<- as.factor(unlist(kmeans_all[i]))
  ggplot(pcaData, aes(PC1, PC2, color=population, shape=cluster)) + geom_point(size=3) + xlab(paste0("PC1: ",percentVar[1],"% variance")) + ylab(paste0("PC2: ",percentVar[2],"% variance")) + coord_fixed()+scale_shape_manual(values=seq(0,15))
}


cluster_8<- as.factor(unlist(kmeans_all[8]))


ggplot(pcaData, aes(PC1, PC2, color=population, shape=cluster_all[i])) + geom_point(size=3) + xlab(paste0("PC1: ",percentVar[1],"% variance")) + ylab(paste0("PC2: ",percentVar[2],"% variance")) + coord_fixed()+scale_shape_manual(values=seq(0,15))

