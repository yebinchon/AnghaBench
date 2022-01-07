
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int DataContext; } ;
typedef TYPE_1__* PNTFS_FILE_HANDLE ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 int FrLdrTempFree (TYPE_1__*,int ) ;
 TYPE_1__* FsGetDeviceSpecific (int ) ;
 int NtfsReleaseAttributeContext (int ) ;
 int TAG_NTFS_FILE ;

ARC_STATUS NtfsClose(ULONG FileId)
{
    PNTFS_FILE_HANDLE FileHandle = FsGetDeviceSpecific(FileId);

    NtfsReleaseAttributeContext(FileHandle->DataContext);
    FrLdrTempFree(FileHandle, TAG_NTFS_FILE);

    return ESUCCESS;
}
