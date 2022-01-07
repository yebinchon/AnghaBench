
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


 scalar_t__ AllocateDescPipe ;
 int DO_DB (int ) ;
 int FreeDesc (TYPE_2__*) ;
 int LOG ;
 int WARNING ;
 TYPE_2__* allocatedDescs ;
 int elog (int ,char*,...) ;
 int numAllocatedDescs ;
 int pclose (int *) ;

int
ClosePipeStream(FILE *file)
{
 int i;

 DO_DB(elog(LOG, "ClosePipeStream: Allocated %d", numAllocatedDescs));


 for (i = numAllocatedDescs; --i >= 0;)
 {
  AllocateDesc *desc = &allocatedDescs[i];

  if (desc->kind == AllocateDescPipe && desc->desc.file == file)
   return FreeDesc(desc);
 }


 elog(WARNING, "file passed to ClosePipeStream was not obtained from OpenPipeStream");

 return pclose(file);
}
