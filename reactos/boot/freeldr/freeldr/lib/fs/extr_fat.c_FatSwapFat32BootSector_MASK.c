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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  PFAT32_BOOTSECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  BackupBootSector ; 
 int /*<<< orphan*/  BootSectorMagic ; 
 int /*<<< orphan*/  BytesPerSector ; 
 int /*<<< orphan*/  ExtendedFlags ; 
 int /*<<< orphan*/  FileSystemVersion ; 
 int /*<<< orphan*/  FsInfo ; 
 int /*<<< orphan*/  HiddenSectors ; 
 int /*<<< orphan*/  NumberOfHeads ; 
 int /*<<< orphan*/  ReservedSectors ; 
 int /*<<< orphan*/  RootDirEntries ; 
 int /*<<< orphan*/  RootDirStartCluster ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SectorsPerFat ; 
 int /*<<< orphan*/  SectorsPerFatBig ; 
 int /*<<< orphan*/  TotalSectors ; 
 int /*<<< orphan*/  TotalSectorsBig ; 
 int /*<<< orphan*/  VolumeSerialNumber ; 

VOID FUNC2(PFAT32_BOOTSECTOR Obj)
{
    FUNC1(Obj, BytesPerSector);
    FUNC1(Obj, ReservedSectors);
    FUNC1(Obj, RootDirEntries);
    FUNC1(Obj, TotalSectors);
    FUNC1(Obj, SectorsPerFat);
    FUNC1(Obj, NumberOfHeads);
    FUNC0(Obj, HiddenSectors);
    FUNC0(Obj, TotalSectorsBig);
    FUNC0(Obj, SectorsPerFatBig);
    FUNC1(Obj, ExtendedFlags);
    FUNC1(Obj, FileSystemVersion);
    FUNC0(Obj, RootDirStartCluster);
    FUNC1(Obj, FsInfo);
    FUNC1(Obj, BackupBootSector);
    FUNC0(Obj, VolumeSerialNumber);
    FUNC1(Obj, BootSectorMagic);
}