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
typedef  int /*<<< orphan*/  PFILESYSTEM_STATISTICS ;

/* Variables and functions */
 int /*<<< orphan*/  MetaDataDiskReads ; 
 int /*<<< orphan*/  MetaDataDiskWrites ; 
 int /*<<< orphan*/  MetaDataReadBytes ; 
 int /*<<< orphan*/  MetaDataReads ; 
 int /*<<< orphan*/  MetaDataWriteBytes ; 
 int /*<<< orphan*/  MetaDataWrites ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UserDiskReads ; 
 int /*<<< orphan*/  UserDiskWrites ; 
 int /*<<< orphan*/  UserFileReadBytes ; 
 int /*<<< orphan*/  UserFileReads ; 
 int /*<<< orphan*/  UserFileWriteBytes ; 
 int /*<<< orphan*/  UserFileWrites ; 

inline void
FUNC1(PFILESYSTEM_STATISTICS Base, PFILESYSTEM_STATISTICS NextBase)
{
    /* Sum any entry in the generic structures */
    FUNC0(Base, NextBase, UserFileReads);
    FUNC0(Base, NextBase, UserFileReadBytes);
    FUNC0(Base, NextBase, UserDiskReads);
    FUNC0(Base, NextBase, UserFileWrites);
    FUNC0(Base, NextBase, UserFileWriteBytes);
    FUNC0(Base, NextBase, UserDiskWrites);
    FUNC0(Base, NextBase, MetaDataReads);
    FUNC0(Base, NextBase, MetaDataReadBytes);
    FUNC0(Base, NextBase, MetaDataDiskReads);
    FUNC0(Base, NextBase, MetaDataWrites);
    FUNC0(Base, NextBase, MetaDataWriteBytes);
    FUNC0(Base, NextBase, MetaDataDiskWrites);
}