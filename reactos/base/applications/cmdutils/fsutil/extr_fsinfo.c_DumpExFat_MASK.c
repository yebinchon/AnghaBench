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
typedef  void* PEXFAT_STATISTICS ;

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
    PEXFAT_STATISTICS ExFat;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    ExFat = Specific;

    /* First, display the generic stats */
    FUNC1(Base, FUNC2("EXFAT"));

    /* Then, display the EXFAT specific ones */
    FUNC0(ExFat, CreateHits);
    FUNC0(ExFat, SuccessfulCreates);
    FUNC0(ExFat, FailedCreates);
    FUNC0(ExFat, NonCachedReads);
    FUNC0(ExFat, NonCachedReadBytes);
    FUNC0(ExFat, NonCachedWrites);
    FUNC0(ExFat, NonCachedWriteBytes);
    FUNC0(ExFat, NonCachedDiskReads);
    FUNC0(ExFat, NonCachedDiskWrites);
}