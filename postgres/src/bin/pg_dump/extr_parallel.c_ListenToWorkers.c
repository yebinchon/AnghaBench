
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_6__ {int workerStatus; int callback_data; int (* callback ) (int *,int *,int,int ) ;} ;
struct TYPE_5__ {int ** te; TYPE_2__* parallelSlot; } ;
typedef TYPE_1__ ParallelState ;
typedef TYPE_2__ ParallelSlot ;
typedef int ArchiveHandle ;


 int WRKR_IDLE ;
 int fatal (char*,...) ;
 int free (char*) ;
 char* getMessageFromWorker (TYPE_1__*,int,int*) ;
 scalar_t__ messageStartsWith (char*,char*) ;
 int parseWorkerResponse (int *,int *,char*) ;
 int stub1 (int *,int *,int,int ) ;

__attribute__((used)) static bool
ListenToWorkers(ArchiveHandle *AH, ParallelState *pstate, bool do_wait)
{
 int worker;
 char *msg;


 msg = getMessageFromWorker(pstate, do_wait, &worker);

 if (!msg)
 {

  if (do_wait)
   fatal("a worker process died unexpectedly");
  return 0;
 }


 if (messageStartsWith(msg, "OK "))
 {
  ParallelSlot *slot = &pstate->parallelSlot[worker];
  TocEntry *te = pstate->te[worker];
  int status;

  status = parseWorkerResponse(AH, te, msg);
  slot->callback(AH, te, status, slot->callback_data);
  slot->workerStatus = WRKR_IDLE;
  pstate->te[worker] = ((void*)0);
 }
 else
  fatal("invalid message received from worker: \"%s\"",
     msg);


 free(msg);

 return 1;
}
