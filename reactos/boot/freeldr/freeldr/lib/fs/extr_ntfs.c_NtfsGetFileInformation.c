
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int QuadPart; } ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_13__ {TYPE_2__ CurrentAddress; TYPE_3__ EndingAddress; } ;
struct TYPE_12__ {int Offset; TYPE_1__* DataContext; } ;
struct TYPE_9__ {int Record; } ;
typedef TYPE_4__* PNTFS_FILE_HANDLE ;
typedef TYPE_5__ FILEINFORMATION ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 TYPE_4__* FsGetDeviceSpecific (int ) ;
 int NtfsGetAttributeSize (int *) ;
 int RtlZeroMemory (TYPE_5__*,int) ;
 int TRACE (char*,int ,int ,int ) ;

ARC_STATUS NtfsGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    PNTFS_FILE_HANDLE FileHandle = FsGetDeviceSpecific(FileId);

    RtlZeroMemory(Information, sizeof(*Information));
    Information->EndingAddress.QuadPart = NtfsGetAttributeSize(&FileHandle->DataContext->Record);
    Information->CurrentAddress.QuadPart = FileHandle->Offset;

    TRACE("NtfsGetFileInformation(%lu) -> FileSize = %llu, FilePointer = 0x%llx\n",
          FileId, Information->EndingAddress.QuadPart, Information->CurrentAddress.QuadPart);

    return ESUCCESS;
}
