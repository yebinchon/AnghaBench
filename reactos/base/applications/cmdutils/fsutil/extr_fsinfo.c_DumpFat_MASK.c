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
typedef  void* PVOID ;
typedef  void* PFILESYSTEM_STATISTICS ;
typedef  void* PFAT_STATISTICS ;

/* Variables and functions */
 int /*<<< orphan*/  CreateHits ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FailedCreates ; 
 int /*<<< orphan*/  NonCachedDiskReads ; 
 int /*<<< orphan*/  NonCachedDiskWrites ; 
 int /*<<< orphan*/  NonCachedReadBytes ; 
 int /*<<< orphan*/  NonCachedReads ; 
 int /*<<< orphan*/  NonCachedWriteBytes ; 
 int /*<<< orphan*/  NonCachedWrites ; 
 int /*<<< orphan*/  SuccessfulCreates ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(PVOID Statistics, PVOID Specific)
{
    PFAT_STATISTICS Fat;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    Fat = Specific;

    /* First, display the generic stats */
    FUNC1(Base, FUNC2("FAT"));

    /* Then, display the FAT specific ones */
    FUNC0(Fat, CreateHits);
    FUNC0(Fat, SuccessfulCreates);
    FUNC0(Fat, FailedCreates);
    FUNC0(Fat, NonCachedReads);
    FUNC0(Fat, NonCachedReadBytes);
    FUNC0(Fat, NonCachedWrites);
    FUNC0(Fat, NonCachedWriteBytes);
    FUNC0(Fat, NonCachedDiskReads);
    FUNC0(Fat, NonCachedDiskWrites);
}