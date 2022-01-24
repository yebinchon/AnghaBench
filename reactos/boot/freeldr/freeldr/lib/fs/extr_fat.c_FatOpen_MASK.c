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
typedef  int /*<<< orphan*/  TempFileInfo ;
struct TYPE_10__ {int Attributes; } ;
struct TYPE_9__ {int /*<<< orphan*/  Volume; } ;
typedef  int /*<<< orphan*/  PFAT_VOLUME_INFO ;
typedef  TYPE_1__* PFAT_FILE_INFO ;
typedef  scalar_t__ OPENMODE ;
typedef  TYPE_2__ FAT_FILE_INFO ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOLEAN ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 scalar_t__ EACCES ; 
 scalar_t__ EISDIR ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTDIR ; 
 scalar_t__ ESUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FatVolumes ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t,TYPE_1__*) ; 
 scalar_t__ OpenDirectory ; 
 scalar_t__ OpenReadOnly ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  TAG_FAT_FILE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

ARC_STATUS FUNC7(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    PFAT_VOLUME_INFO FatVolume;
    FAT_FILE_INFO TempFileInfo;
    PFAT_FILE_INFO FileHandle;
    ULONG DeviceId;
    BOOLEAN IsDirectory;
    ARC_STATUS Status;

    if (OpenMode != OpenReadOnly && OpenMode != OpenDirectory)
        return EACCES;

    DeviceId = FUNC2(*FileId);
    FatVolume = FatVolumes[DeviceId];

    FUNC6("FatOpen() FileName = %s\n", Path);

    FUNC5(&TempFileInfo, sizeof(TempFileInfo));
    Status = FUNC0(FatVolume, Path, &TempFileInfo);
    if (Status != ESUCCESS)
        return ENOENT;

    //
    // Check if caller opened what he expected (dir vs file)
    //
    IsDirectory = (TempFileInfo.Attributes & ATTR_DIRECTORY) != 0;
    if (IsDirectory && OpenMode != OpenDirectory)
        return EISDIR;
    else if (!IsDirectory && OpenMode != OpenReadOnly)
        return ENOTDIR;

    FileHandle = FUNC1(sizeof(FAT_FILE_INFO), TAG_FAT_FILE);
    if (!FileHandle)
        return ENOMEM;

    FUNC4(FileHandle, &TempFileInfo, sizeof(FAT_FILE_INFO));
    FileHandle->Volume = FatVolume;

    FUNC3(*FileId, FileHandle);
    return ESUCCESS;
}