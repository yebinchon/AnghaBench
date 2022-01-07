
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {int DeviceId; int * Specific; TYPE_1__* FuncTable; } ;
struct TYPE_3__ {scalar_t__ (* Close ) (size_t) ;} ;
typedef scalar_t__ ARC_STATUS ;


 scalar_t__ EBADF ;
 scalar_t__ ESUCCESS ;
 TYPE_2__* FileData ;
 size_t MAX_FDS ;
 scalar_t__ stub1 (size_t) ;

ARC_STATUS ArcClose(ULONG FileId)
{
    ARC_STATUS Status;

    if (FileId >= MAX_FDS || !FileData[FileId].FuncTable)
        return EBADF;

    Status = FileData[FileId].FuncTable->Close(FileId);

    if (Status == ESUCCESS)
    {
        FileData[FileId].FuncTable = ((void*)0);
        FileData[FileId].Specific = ((void*)0);
        FileData[FileId].DeviceId = -1;
    }
    return Status;
}
