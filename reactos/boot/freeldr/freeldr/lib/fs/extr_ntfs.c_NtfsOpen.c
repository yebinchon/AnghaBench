
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_10__ {int DataContext; TYPE_1__* Volume; } ;
struct TYPE_9__ {scalar_t__ MftRecordSize; } ;
typedef TYPE_1__* PNTFS_VOLUME_INFO ;
typedef scalar_t__ PNTFS_MFT_RECORD ;
typedef TYPE_2__* PNTFS_FILE_HANDLE ;
typedef scalar_t__ OPENMODE ;
typedef int NTFS_FILE_HANDLE ;
typedef int CHAR ;
typedef int ARC_STATUS ;


 int EACCES ;
 int ENOENT ;
 int ENOMEM ;
 int ESUCCESS ;
 TYPE_2__* FrLdrTempAlloc (scalar_t__,int ) ;
 int FrLdrTempFree (TYPE_2__*,int ) ;
 size_t FsGetDeviceId (size_t) ;
 int FsSetDeviceSpecific (size_t,TYPE_2__*) ;
 int NtfsLookupFile (TYPE_1__*,int *,scalar_t__,int *) ;
 TYPE_1__** NtfsVolumes ;
 scalar_t__ OpenReadOnly ;
 int RtlZeroMemory (TYPE_2__*,scalar_t__) ;
 int TAG_NTFS_FILE ;
 int TRACE (char*,int *) ;

ARC_STATUS NtfsOpen(CHAR* Path, OPENMODE OpenMode, ULONG* FileId)
{
    PNTFS_VOLUME_INFO Volume;
    PNTFS_FILE_HANDLE FileHandle;
    PNTFS_MFT_RECORD MftRecord;
    ULONG DeviceId;




    if (OpenMode != OpenReadOnly)
        return EACCES;




    DeviceId = FsGetDeviceId(*FileId);
    Volume = NtfsVolumes[DeviceId];

    TRACE("NtfsOpen() FileName = %s\n", Path);




    FileHandle = FrLdrTempAlloc(sizeof(NTFS_FILE_HANDLE) + Volume->MftRecordSize,
                                TAG_NTFS_FILE);
    if (!FileHandle)
    {
        return ENOMEM;
    }
    RtlZeroMemory(FileHandle, sizeof(NTFS_FILE_HANDLE) + Volume->MftRecordSize);
    FileHandle->Volume = Volume;




    MftRecord = (PNTFS_MFT_RECORD)(FileHandle + 1);
    if (!NtfsLookupFile(Volume, Path, MftRecord, &FileHandle->DataContext))
    {
        FrLdrTempFree(FileHandle, TAG_NTFS_FILE);
        return ENOENT;
    }

    FsSetDeviceSpecific(*FileId, FileHandle);
    return ESUCCESS;
}
