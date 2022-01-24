#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ULONG ;
struct TYPE_10__ {int /*<<< orphan*/  DataContext; TYPE_1__* Volume; } ;
struct TYPE_9__ {scalar_t__ MftRecordSize; } ;
typedef  TYPE_1__* PNTFS_VOLUME_INFO ;
typedef  scalar_t__ PNTFS_MFT_RECORD ;
typedef  TYPE_2__* PNTFS_FILE_HANDLE ;
typedef  scalar_t__ OPENMODE ;
typedef  int /*<<< orphan*/  NTFS_FILE_HANDLE ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  ARC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ESUCCESS ; 
 TYPE_2__* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 TYPE_1__** NtfsVolumes ; 
 scalar_t__ OpenReadOnly ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  TAG_NTFS_FILE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

ARC_STATUS FUNC7(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    PNTFS_VOLUME_INFO Volume;
    PNTFS_FILE_HANDLE FileHandle;
    PNTFS_MFT_RECORD MftRecord;
    ULONG DeviceId;

    //
    // Check parameters
    //
    if (OpenMode != OpenReadOnly)
        return EACCES;

    //
    // Get underlying device
    //
    DeviceId = FUNC2(*FileId);
    Volume = NtfsVolumes[DeviceId];

    FUNC6("NtfsOpen() FileName = %s\n", Path);

    //
    // Allocate file structure
    //
    FileHandle = FUNC0(sizeof(NTFS_FILE_HANDLE) + Volume->MftRecordSize,
                                TAG_NTFS_FILE);
    if (!FileHandle)
    {
        return ENOMEM;
    }
    FUNC5(FileHandle, sizeof(NTFS_FILE_HANDLE) + Volume->MftRecordSize);
    FileHandle->Volume = Volume;

    //
    // Search file entry
    //
    MftRecord = (PNTFS_MFT_RECORD)(FileHandle + 1);
    if (!FUNC4(Volume, Path, MftRecord, &FileHandle->DataContext))
    {
        FUNC1(FileHandle, TAG_NTFS_FILE);
        return ENOENT;
    }

    FUNC3(*FileId, FileHandle);
    return ESUCCESS;
}