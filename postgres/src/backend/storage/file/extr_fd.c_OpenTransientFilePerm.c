
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_4__ {int fd; } ;
struct TYPE_5__ {int create_subid; TYPE_1__ desc; int kind; } ;
typedef TYPE_2__ AllocateDesc ;


 int AllocateDescRawFD ;
 int BasicOpenFilePerm (char const*,int,int ) ;
 int DO_DB (int ) ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int LOG ;
 int ReleaseLruFiles () ;
 TYPE_2__* allocatedDescs ;
 int elog (int ,char*,size_t,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,char const*) ;
 int maxAllocatedDescs ;
 size_t numAllocatedDescs ;
 int reserveAllocatedDesc () ;

int
OpenTransientFilePerm(const char *fileName, int fileFlags, mode_t fileMode)
{
 int fd;

 DO_DB(elog(LOG, "OpenTransientFile: Allocated %d (%s)",
      numAllocatedDescs, fileName));


 if (!reserveAllocatedDesc())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("exceeded maxAllocatedDescs (%d) while trying to open file \"%s\"",
      maxAllocatedDescs, fileName)));


 ReleaseLruFiles();

 fd = BasicOpenFilePerm(fileName, fileFlags, fileMode);

 if (fd >= 0)
 {
  AllocateDesc *desc = &allocatedDescs[numAllocatedDescs];

  desc->kind = AllocateDescRawFD;
  desc->desc.fd = fd;
  desc->create_subid = GetCurrentSubTransactionId();
  numAllocatedDescs++;

  return fd;
 }

 return -1;
}
