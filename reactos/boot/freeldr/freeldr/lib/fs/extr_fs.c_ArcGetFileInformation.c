
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_4__ {TYPE_1__* FuncTable; } ;
struct TYPE_3__ {int (* GetFileInformation ) (size_t,int *) ;} ;
typedef int FILEINFORMATION ;
typedef int ARC_STATUS ;


 int EBADF ;
 TYPE_2__* FileData ;
 size_t MAX_FDS ;
 int stub1 (size_t,int *) ;

ARC_STATUS ArcGetFileInformation(ULONG FileId, FILEINFORMATION* Information)
{
    if (FileId >= MAX_FDS || !FileData[FileId].FuncTable)
        return EBADF;
    return FileData[FileId].FuncTable->GetFileInformation(FileId, Information);
}
