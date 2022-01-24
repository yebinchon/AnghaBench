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
typedef  void* PNTFS_STATISTICS ;
typedef  void* PFILESYSTEM_STATISTICS ;

/* Variables and functions */
 int /*<<< orphan*/  BitmapReadBytes ; 
 int /*<<< orphan*/  BitmapReads ; 
 int /*<<< orphan*/  BitmapWriteBytes ; 
 int /*<<< orphan*/  BitmapWrites ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LogFileReadBytes ; 
 int /*<<< orphan*/  LogFileReads ; 
 int /*<<< orphan*/  LogFileWriteBytes ; 
 int /*<<< orphan*/  LogFileWrites ; 
 int /*<<< orphan*/  Mft2WriteBytes ; 
 int /*<<< orphan*/  Mft2Writes ; 
 int /*<<< orphan*/  MftBitmapReadBytes ; 
 int /*<<< orphan*/  MftBitmapReads ; 
 int /*<<< orphan*/  MftBitmapWriteBytes ; 
 int /*<<< orphan*/  MftBitmapWrites ; 
 int /*<<< orphan*/  MftReadBytes ; 
 int /*<<< orphan*/  MftReads ; 
 int /*<<< orphan*/  MftWriteBytes ; 
 int /*<<< orphan*/  MftWrites ; 
 int /*<<< orphan*/  RootIndexReadBytes ; 
 int /*<<< orphan*/  RootIndexReads ; 
 int /*<<< orphan*/  RootIndexWriteBytes ; 
 int /*<<< orphan*/  RootIndexWrites ; 
 int /*<<< orphan*/  UserIndexReadBytes ; 
 int /*<<< orphan*/  UserIndexReads ; 
 int /*<<< orphan*/  UserIndexWriteBytes ; 
 int /*<<< orphan*/  UserIndexWrites ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(PVOID Statistics, PVOID Specific)
{
    PNTFS_STATISTICS Ntfs;
    PFILESYSTEM_STATISTICS Base;

    Base = Statistics;
    Ntfs = Specific;

    /* First, display the generic stats */
    FUNC1(Base, FUNC2("NTFS"));

    /* Then, display the NTFS specific ones */
    FUNC0(Ntfs, MftReads);
    FUNC0(Ntfs, MftReadBytes);
    FUNC0(Ntfs, MftWrites);
    FUNC0(Ntfs, MftWriteBytes);
    FUNC0(Ntfs, Mft2Writes);
    FUNC0(Ntfs, Mft2WriteBytes);
    FUNC0(Ntfs, RootIndexReads);
    FUNC0(Ntfs, RootIndexReadBytes);
    FUNC0(Ntfs, RootIndexWrites);
    FUNC0(Ntfs, RootIndexWriteBytes);
    FUNC0(Ntfs, BitmapReads);
    FUNC0(Ntfs, BitmapReadBytes);
    FUNC0(Ntfs, BitmapWrites);
    FUNC0(Ntfs, BitmapWriteBytes);
    FUNC0(Ntfs, MftBitmapReads);
    FUNC0(Ntfs, MftBitmapReadBytes);
    FUNC0(Ntfs, MftBitmapWrites);
    FUNC0(Ntfs, MftBitmapWriteBytes);
    FUNC0(Ntfs, UserIndexReads);
    FUNC0(Ntfs, UserIndexReadBytes);
    FUNC0(Ntfs, UserIndexWrites);
    FUNC0(Ntfs, UserIndexWriteBytes);
    FUNC0(Ntfs, LogFileReads);
    FUNC0(Ntfs, LogFileReadBytes);
    FUNC0(Ntfs, LogFileWrites);
    FUNC0(Ntfs, LogFileWriteBytes);
}