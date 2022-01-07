
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * file; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ desc; } ;
typedef int FILE ;
typedef TYPE_2__ AllocateDesc ;


 scalar_t__ AllocateDescFile ;
 int DO_DB (int ) ;
 int FreeDesc (TYPE_2__*) ;
 int LOG ;
 int WARNING ;
 TYPE_2__* allocatedDescs ;
 int elog (int ,char*,...) ;
 int fclose (int *) ;
 int numAllocatedDescs ;

int
FreeFile(FILE *file)
{
 int i;

 DO_DB(elog(LOG, "FreeFile: Allocated %d", numAllocatedDescs));


 for (i = numAllocatedDescs; --i >= 0;)
 {
  AllocateDesc *desc = &allocatedDescs[i];

  if (desc->kind == AllocateDescFile && desc->desc.file == file)
   return FreeDesc(desc);
 }


 elog(WARNING, "file passed to FreeFile was not obtained from AllocateFile");

 return fclose(file);
}
