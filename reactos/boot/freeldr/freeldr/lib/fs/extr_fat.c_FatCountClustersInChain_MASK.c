#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ULONG ;
typedef  scalar_t__ UINT32 ;
typedef  int /*<<< orphan*/  PFAT_VOLUME_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static
ULONG FUNC3(PFAT_VOLUME_INFO Volume, UINT32 StartCluster)
{
    ULONG    ClusterCount = 0;

    FUNC2("FatCountClustersInChain() StartCluster = %d\n", StartCluster);

    while (1)
    {
        //
        // If end of chain then break out of our cluster counting loop
        //
        if (FUNC0(StartCluster))
        {
            break;
        }

        //
        // Increment count
        //
        ClusterCount++;

        //
        // Get next cluster
        //
        if (!FUNC1(Volume, StartCluster, &StartCluster))
        {
            return 0;
        }
    }

    FUNC2("FatCountClustersInChain() ClusterCount = %d\n", ClusterCount);

    return ClusterCount;
}