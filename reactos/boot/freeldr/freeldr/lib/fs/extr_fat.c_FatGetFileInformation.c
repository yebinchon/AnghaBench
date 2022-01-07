
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {int LowPart; } ;
struct TYPE_8__ {int LowPart; } ;
struct TYPE_11__ {TYPE_2__ CurrentAddress; TYPE_1__ EndingAddress; } ;
struct TYPE_10__ {int FilePointer; int FileSize; } ;
typedef TYPE_3__* PFAT_FILE_INFO ;
typedef TYPE_4__ FILEINFORMATION ;
typedef int ARC_STATUS ;


 int ESUCCESS ;
 TYPE_3__* FsGetDeviceSpecific (int ) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 int TRACE (char*,int ,int ,int ) ;

ARC_STATUS FatGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    PFAT_FILE_INFO FileHandle = FsGetDeviceSpecific(FileId);

    RtlZeroMemory(Information, sizeof(*Information));
    Information->EndingAddress.LowPart = FileHandle->FileSize;
    Information->CurrentAddress.LowPart = FileHandle->FilePointer;

    TRACE("FatGetFileInformation(%lu) -> FileSize = %lu, FilePointer = 0x%lx\n",
          FileId, Information->EndingAddress.LowPart, Information->CurrentAddress.LowPart);

    return ESUCCESS;
}
