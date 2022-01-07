
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * dir; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ desc; } ;
typedef int DIR ;
typedef TYPE_2__ AllocateDesc ;


 scalar_t__ AllocateDescDir ;
 int DO_DB (int ) ;
 int FreeDesc (TYPE_2__*) ;
 int LOG ;
 int WARNING ;
 TYPE_2__* allocatedDescs ;
 int closedir (int *) ;
 int elog (int ,char*,...) ;
 int numAllocatedDescs ;

int
FreeDir(DIR *dir)
{
 int i;


 if (dir == ((void*)0))
  return 0;

 DO_DB(elog(LOG, "FreeDir: Allocated %d", numAllocatedDescs));


 for (i = numAllocatedDescs; --i >= 0;)
 {
  AllocateDesc *desc = &allocatedDescs[i];

  if (desc->kind == AllocateDescDir && desc->desc.dir == dir)
   return FreeDesc(desc);
 }


 elog(WARNING, "dir passed to FreeDir was not obtained from AllocateDir");

 return closedir(dir);
}
