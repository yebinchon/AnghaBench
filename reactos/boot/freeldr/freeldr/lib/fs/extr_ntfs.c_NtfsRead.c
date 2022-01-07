
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_3__ {int Offset; int DataContext; int Volume; } ;
typedef TYPE_1__* PNTFS_FILE_HANDLE ;
typedef int ARC_STATUS ;


 int EIO ;
 int ESUCCESS ;
 TYPE_1__* FsGetDeviceSpecific (scalar_t__) ;
 scalar_t__ NtfsReadAttribute (int ,int ,int ,int *,scalar_t__) ;

ARC_STATUS NtfsRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    PNTFS_FILE_HANDLE FileHandle = FsGetDeviceSpecific(FileId);
    ULONGLONG BytesRead64;




    BytesRead64 = NtfsReadAttribute(FileHandle->Volume, FileHandle->DataContext, FileHandle->Offset, Buffer, N);
    FileHandle->Offset += BytesRead64;
    *Count = (ULONG)BytesRead64;




    if (BytesRead64 > 0)
        return ESUCCESS;
    else
        return EIO;
}
