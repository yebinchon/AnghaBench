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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  TempFileInfo ;
typedef  int /*<<< orphan*/  PISO_FILE_INFO ;
typedef  scalar_t__ OPENMODE ;
typedef  int /*<<< orphan*/  ISO_FILE_INFO ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ ARC_STATUS ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ESUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ OpenReadOnly ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TAG_ISO_FILE ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

ARC_STATUS FUNC7(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    ISO_FILE_INFO TempFileInfo;
    PISO_FILE_INFO FileHandle;
    ULONG DeviceId;
    ARC_STATUS Status;

    if (OpenMode != OpenReadOnly)
        return EACCES;

    DeviceId = FUNC1(*FileId);

    FUNC6("IsoOpen() FileName = %s\n", Path);

    FUNC5(&TempFileInfo, sizeof(TempFileInfo));
    Status = FUNC3(Path, DeviceId, &TempFileInfo);
    if (Status != ESUCCESS)
        return ENOENT;

    FileHandle = FUNC0(sizeof(ISO_FILE_INFO), TAG_ISO_FILE);
    if (!FileHandle)
        return ENOMEM;

    FUNC4(FileHandle, &TempFileInfo, sizeof(ISO_FILE_INFO));

    FUNC2(*FileId, FileHandle);
    return ESUCCESS;
}