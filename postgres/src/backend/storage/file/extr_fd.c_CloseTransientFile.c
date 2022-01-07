
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_1__ desc; } ;
typedef TYPE_2__ AllocateDesc ;


 scalar_t__ AllocateDescRawFD ;
 int DO_DB (int ) ;
 int FreeDesc (TYPE_2__*) ;
 int LOG ;
 int WARNING ;
 TYPE_2__* allocatedDescs ;
 int close (int) ;
 int elog (int ,char*,...) ;
 int numAllocatedDescs ;

int
CloseTransientFile(int fd)
{
 int i;

 DO_DB(elog(LOG, "CloseTransientFile: Allocated %d", numAllocatedDescs));


 for (i = numAllocatedDescs; --i >= 0;)
 {
  AllocateDesc *desc = &allocatedDescs[i];

  if (desc->kind == AllocateDescRawFD && desc->desc.fd == fd)
   return FreeDesc(desc);
 }


 elog(WARNING, "fd passed to CloseTransientFile was not obtained from OpenTransientFile");

 return close(fd);
}
