
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int TempFileInfo ;
typedef int PISO_FILE_INFO ;
typedef scalar_t__ OPENMODE ;
typedef int ISO_FILE_INFO ;
typedef int CHAR ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ EACCES ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 scalar_t__ ESUCCESS ;
 int FrLdrTempAlloc (int,int ) ;
 int FsGetDeviceId (int ) ;
 int FsSetDeviceSpecific (int ,int ) ;
 scalar_t__ IsoLookupFile (int *,int ,int *) ;
 scalar_t__ OpenReadOnly ;
 int RtlCopyMemory (int ,int *,int) ;
 int RtlZeroMemory (int *,int) ;
 int TAG_ISO_FILE ;
 int TRACE (char*,int *) ;

ARC_STATUS IsoOpen(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    ISO_FILE_INFO TempFileInfo;
    PISO_FILE_INFO FileHandle;
    ULONG DeviceId;
    ARC_STATUS Status;

    if (OpenMode != OpenReadOnly)
        return EACCES;

    DeviceId = FsGetDeviceId(*FileId);

    TRACE("IsoOpen() FileName = %s\n", Path);

    RtlZeroMemory(&TempFileInfo, sizeof(TempFileInfo));
    Status = IsoLookupFile(Path, DeviceId, &TempFileInfo);
    if (Status != ESUCCESS)
        return ENOENT;

    FileHandle = FrLdrTempAlloc(sizeof(ISO_FILE_INFO), TAG_ISO_FILE);
    if (!FileHandle)
        return ENOMEM;

    RtlCopyMemory(FileHandle, &TempFileInfo, sizeof(ISO_FILE_INFO));

    FsSetDeviceSpecific(*FileId, FileHandle);
    return ESUCCESS;
}
