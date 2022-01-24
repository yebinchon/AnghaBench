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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/  PFILESYSTEM_STATISTICS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MetaDataDiskReads ; 
 int /*<<< orphan*/  MetaDataDiskWrites ; 
 int /*<<< orphan*/  MetaDataReadBytes ; 
 int /*<<< orphan*/  MetaDataReads ; 
 int /*<<< orphan*/  MetaDataWriteBytes ; 
 int /*<<< orphan*/  MetaDataWrites ; 
 int /*<<< orphan*/  UserDiskReads ; 
 int /*<<< orphan*/  UserDiskWrites ; 
 int /*<<< orphan*/  UserFileReadBytes ; 
 int /*<<< orphan*/  UserFileReads ; 
 int /*<<< orphan*/  UserFileWriteBytes ; 
 int /*<<< orphan*/  UserFileWrites ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC3(PFILESYSTEM_STATISTICS Base, TCHAR * Name)
{
    /* Print FS name */
    FUNC2(stdout, FUNC1("File system type: %s\n\n"), Name);

    /* And then, dump any base stat */
    FUNC0(Base, UserFileReads);
    FUNC0(Base, UserFileReadBytes);
    FUNC0(Base, UserDiskReads);
    FUNC0(Base, UserFileWrites);
    FUNC0(Base, UserFileWriteBytes);
    FUNC0(Base, UserDiskWrites);
    FUNC0(Base, MetaDataReads);
    FUNC0(Base, MetaDataReadBytes);
    FUNC0(Base, MetaDataDiskReads);
    FUNC0(Base, MetaDataWrites);
    FUNC0(Base, MetaDataWriteBytes);
    FUNC0(Base, MetaDataDiskWrites);

    FUNC2(stdout, FUNC1("\n"));
}