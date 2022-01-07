
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ULONG ;
typedef int TempFileInfo ;
struct TYPE_10__ {int Attributes; } ;
struct TYPE_9__ {int Volume; } ;
typedef int PFAT_VOLUME_INFO ;
typedef TYPE_1__* PFAT_FILE_INFO ;
typedef scalar_t__ OPENMODE ;
typedef TYPE_2__ FAT_FILE_INFO ;
typedef int CHAR ;
typedef int BOOLEAN ;
typedef scalar_t__ ARC_STATUS ;


 int ATTR_DIRECTORY ;
 scalar_t__ EACCES ;
 scalar_t__ EISDIR ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 scalar_t__ ENOTDIR ;
 scalar_t__ ESUCCESS ;
 scalar_t__ FatLookupFile (int ,int *,TYPE_2__*) ;
 int * FatVolumes ;
 TYPE_1__* FrLdrTempAlloc (int,int ) ;
 size_t FsGetDeviceId (size_t) ;
 int FsSetDeviceSpecific (size_t,TYPE_1__*) ;
 scalar_t__ OpenDirectory ;
 scalar_t__ OpenReadOnly ;
 int RtlCopyMemory (TYPE_1__*,TYPE_2__*,int) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int TAG_FAT_FILE ;
 int TRACE (char*,int *) ;

ARC_STATUS FatOpen(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    PFAT_VOLUME_INFO FatVolume;
    FAT_FILE_INFO TempFileInfo;
    PFAT_FILE_INFO FileHandle;
    ULONG DeviceId;
    BOOLEAN IsDirectory;
    ARC_STATUS Status;

    if (OpenMode != OpenReadOnly && OpenMode != OpenDirectory)
        return EACCES;

    DeviceId = FsGetDeviceId(*FileId);
    FatVolume = FatVolumes[DeviceId];

    TRACE("FatOpen() FileName = %s\n", Path);

    RtlZeroMemory(&TempFileInfo, sizeof(TempFileInfo));
    Status = FatLookupFile(FatVolume, Path, &TempFileInfo);
    if (Status != ESUCCESS)
        return ENOENT;




    IsDirectory = (TempFileInfo.Attributes & ATTR_DIRECTORY) != 0;
    if (IsDirectory && OpenMode != OpenDirectory)
        return EISDIR;
    else if (!IsDirectory && OpenMode != OpenReadOnly)
        return ENOTDIR;

    FileHandle = FrLdrTempAlloc(sizeof(FAT_FILE_INFO), TAG_FAT_FILE);
    if (!FileHandle)
        return ENOMEM;

    RtlCopyMemory(FileHandle, &TempFileInfo, sizeof(FAT_FILE_INFO));
    FileHandle->Volume = FatVolume;

    FsSetDeviceSpecific(*FileId, FileHandle);
    return ESUCCESS;
}
