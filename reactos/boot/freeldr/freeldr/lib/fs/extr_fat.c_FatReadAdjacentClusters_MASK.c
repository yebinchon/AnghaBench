#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_5__ {int SectorsPerCluster; int DataSectorStart; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int* PUINT32 ;
typedef  TYPE_1__* PFAT_VOLUME_INFO ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
BOOLEAN FUNC3(
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

    if (!FUNC1(Volume, StartClusterNumber, &NextClusterNumber))
    {
        return FALSE;
    }

    // getting the number of adjacent clusters
    while (!FUNC0(NextClusterNumber) && ClustersToRead < MaxClusters && (NextClusterNumber == PrevClusterNumber + 1))
    {
        ClustersToRead++;
        PrevClusterNumber = NextClusterNumber;
        if (!FUNC1(Volume, PrevClusterNumber, &NextClusterNumber))
        {
            return FALSE;
        }
    }

    if (!FUNC2(Volume, ClusterStartSector, ClustersToRead * Volume->SectorsPerCluster, Buffer))
    {
        return FALSE;
    }

    *ClustersRead = ClustersToRead;
    *LastClusterNumber = NextClusterNumber;

    return !FUNC0(NextClusterNumber) && ClustersToRead < MaxClusters;
}