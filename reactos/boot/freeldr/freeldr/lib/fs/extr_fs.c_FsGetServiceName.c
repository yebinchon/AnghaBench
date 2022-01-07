
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {TYPE_1__* FuncTable; } ;
struct TYPE_3__ {int * ServiceName; } ;
typedef int * PCWSTR ;


 TYPE_2__* FileData ;
 size_t MAX_FDS ;

PCWSTR FsGetServiceName(ULONG FileId)
{
    if (FileId >= MAX_FDS || !FileData[FileId].FuncTable)
        return ((void*)0);
    return FileData[FileId].FuncTable->ServiceName;
}
