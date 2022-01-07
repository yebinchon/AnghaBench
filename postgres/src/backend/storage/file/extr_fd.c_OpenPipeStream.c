
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


 int AllocateDescPipe ;
 int DO_DB (int ) ;
 int EMFILE ;
 int ENFILE ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 int LOG ;
 scalar_t__ ReleaseLruFile () ;
 int ReleaseLruFiles () ;
 int SIGPIPE ;
 int SIG_DFL ;
 int SIG_IGN ;
 TYPE_2__* allocatedDescs ;
 int elog (int ,char*,size_t,char const*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int errno ;
 int fflush (int ) ;
 int maxAllocatedDescs ;
 size_t numAllocatedDescs ;
 int * popen (char const*,char const*) ;
 int pqsignal (int ,int ) ;
 int reserveAllocatedDesc () ;
 int stderr ;
 int stdout ;

FILE *
OpenPipeStream(const char *command, const char *mode)
{
 FILE *file;
 int save_errno;

 DO_DB(elog(LOG, "OpenPipeStream: Allocated %d (%s)",
      numAllocatedDescs, command));


 if (!reserveAllocatedDesc())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("exceeded maxAllocatedDescs (%d) while trying to execute command \"%s\"",
      maxAllocatedDescs, command)));


 ReleaseLruFiles();

TryAgain:
 fflush(stdout);
 fflush(stderr);
 pqsignal(SIGPIPE, SIG_DFL);
 errno = 0;
 file = popen(command, mode);
 save_errno = errno;
 pqsignal(SIGPIPE, SIG_IGN);
 errno = save_errno;
 if (file != ((void*)0))
 {
  AllocateDesc *desc = &allocatedDescs[numAllocatedDescs];

  desc->kind = AllocateDescPipe;
  desc->desc.file = file;
  desc->create_subid = GetCurrentSubTransactionId();
  numAllocatedDescs++;
  return desc->desc.file;
 }

 if (errno == EMFILE || errno == ENFILE)
 {
  ereport(LOG,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("out of file descriptors: %m; release and retry")));
  if (ReleaseLruFile())
   goto TryAgain;
  errno = save_errno;
 }

 return ((void*)0);
}
