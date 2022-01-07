
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int SectorsPerCluster; int DataSectorStart; } ;
typedef int PVOID ;
typedef int* PUINT32 ;
typedef TYPE_1__* PFAT_VOLUME_INFO ;
typedef int BOOLEAN ;


 int FALSE ;
 int FAT_IS_END_CLUSTER (int) ;
 int FatGetFatEntry (TYPE_1__*,int,int*) ;
 int FatReadVolumeSectors (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static
BOOLEAN FatReadAdjacentClusters(
    PFAT_VOLUME_INFO Volume,
    UINT32 StartClusterNumber,
    UINT32 MaxClusters,
    PVOID Buffer,
    PUINT32 ClustersRead,
    PUINT32 LastClusterNumber)
{
    UINT32 NextClusterNumber;
    UINT32 ClustersToRead = 1;
    UINT32 PrevClusterNumber = StartClusterNumber;
    UINT32 ClusterStartSector = ((PrevClusterNumber - 2) * Volume->SectorsPerCluster) + Volume->DataSectorStart;

    *ClustersRead = 0;
    *LastClusterNumber = 0;

    if (!FatGetFatEntry(Volume, StartClusterNumber, &NextClusterNumber))
    {
        return FALSE;
    }


    while (!FAT_IS_END_CLUSTER(NextClusterNumber) && ClustersToRead < MaxClusters && (NextClusterNumber == PrevClusterNumber + 1))
    {
        ClustersToRead++;
        PrevClusterNumber = NextClusterNumber;
        if (!FatGetFatEntry(Volume, PrevClusterNumber, &NextClusterNumber))
        {
            return FALSE;
        }
    }

    if (!FatReadVolumeSectors(Volume, ClusterStartSector, ClustersToRead * Volume->SectorsPerCluster, Buffer))
    {
        return FALSE;
    }

    *ClustersRead = ClustersToRead;
    *LastClusterNumber = NextClusterNumber;

    return !FAT_IS_END_CLUSTER(NextClusterNumber) && ClustersToRead < MaxClusters;
}
