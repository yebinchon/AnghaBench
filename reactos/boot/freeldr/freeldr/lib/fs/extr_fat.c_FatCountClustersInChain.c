
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef scalar_t__ UINT32 ;
typedef int PFAT_VOLUME_INFO ;


 scalar_t__ FAT_IS_END_CLUSTER (scalar_t__) ;
 int FatGetFatEntry (int ,scalar_t__,scalar_t__*) ;
 int TRACE (char*,scalar_t__) ;

__attribute__((used)) static
ULONG FatCountClustersInChain(PFAT_VOLUME_INFO Volume, UINT32 StartCluster)
{
    ULONG ClusterCount = 0;

    TRACE("FatCountClustersInChain() StartCluster = %d\n", StartCluster);

    while (1)
    {



        if (FAT_IS_END_CLUSTER(StartCluster))
        {
            break;
        }




        ClusterCount++;




        if (!FatGetFatEntry(Volume, StartCluster, &StartCluster))
        {
            return 0;
        }
    }

    TRACE("FatCountClustersInChain() ClusterCount = %d\n", ClusterCount);

    return ClusterCount;
}
