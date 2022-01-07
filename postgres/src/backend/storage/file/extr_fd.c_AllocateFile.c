
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * file; } ;
struct TYPE_5__ {TYPE_1__ desc; int create_subid; int kind; } ;
typedef int FILE ;
typedef TYPE_2__ AllocateDesc ;


 int AllocateDescFile ;
 int DO_DB (int ) ;
 int EMFILE ;
 int ENFILE ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int LOG ;
 scalar_t__ ReleaseLruFile () ;
 int ReleaseLruFiles () ;
 TYPE_2__* allocatedDescs ;
 int elog (int ,char*,size_t,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int errno ;
 int * fopen (char const*,char const*) ;
 int maxAllocatedDescs ;
 size_t numAllocatedDescs ;
 int reserveAllocatedDesc () ;

FILE *
AllocateFile(const char *name, const char *mode)
{
 FILE *file;

 DO_DB(elog(LOG, "AllocateFile: Allocated %d (%s)",
      numAllocatedDescs, name));


 if (!reserveAllocatedDesc())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("exceeded maxAllocatedDescs (%d) while trying to open file \"%s\"",
      maxAllocatedDescs, name)));


 ReleaseLruFiles();

TryAgain:
 if ((file = fopen(name, mode)) != ((void*)0))
 {
  AllocateDesc *desc = &allocatedDescs[numAllocatedDescs];

  desc->kind = AllocateDescFile;
  desc->desc.file = file;
  desc->create_subid = GetCurrentSubTransactionId();
  numAllocatedDescs++;
  return desc->desc.file;
 }

 if (errno == EMFILE || errno == ENFILE)
 {
  int save_errno = errno;

  ereport(LOG,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("out of file descriptors: %m; release and retry")));
  errno = 0;
  if (ReleaseLruFile())
   goto TryAgain;
  errno = save_errno;
 }

 return ((void*)0);
}
