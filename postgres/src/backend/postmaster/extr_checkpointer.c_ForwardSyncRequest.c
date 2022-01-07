
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ checkpointer_pid; int num_requests; int max_requests; TYPE_1__* requests; int num_backend_fsync; int num_backend_writes; } ;
struct TYPE_5__ {scalar_t__ checkpointerLatch; } ;
struct TYPE_4__ {int type; int ftag; } ;
typedef int SyncRequestType ;
typedef int FileTag ;
typedef TYPE_1__ CheckpointerRequest ;


 int AmBackgroundWriterProcess () ;
 scalar_t__ AmCheckpointerProcess () ;
 int CheckpointerCommLock ;
 TYPE_3__* CheckpointerShmem ;
 int CompactCheckpointerRequestQueue () ;
 int ERROR ;
 int IsUnderPostmaster ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_2__* ProcGlobal ;
 int SetLatch (scalar_t__) ;
 int elog (int ,char*) ;

bool
ForwardSyncRequest(const FileTag *ftag, SyncRequestType type)
{
 CheckpointerRequest *request;
 bool too_full;

 if (!IsUnderPostmaster)
  return 0;

 if (AmCheckpointerProcess())
  elog(ERROR, "ForwardSyncRequest must not be called in checkpointer");

 LWLockAcquire(CheckpointerCommLock, LW_EXCLUSIVE);


 if (!AmBackgroundWriterProcess())
  CheckpointerShmem->num_backend_writes++;






 if (CheckpointerShmem->checkpointer_pid == 0 ||
  (CheckpointerShmem->num_requests >= CheckpointerShmem->max_requests &&
   !CompactCheckpointerRequestQueue()))
 {




  if (!AmBackgroundWriterProcess())
   CheckpointerShmem->num_backend_fsync++;
  LWLockRelease(CheckpointerCommLock);
  return 0;
 }


 request = &CheckpointerShmem->requests[CheckpointerShmem->num_requests++];
 request->ftag = *ftag;
 request->type = type;


 too_full = (CheckpointerShmem->num_requests >=
    CheckpointerShmem->max_requests / 2);

 LWLockRelease(CheckpointerCommLock);


 if (too_full && ProcGlobal->checkpointerLatch)
  SetLatch(ProcGlobal->checkpointerLatch);

 return 1;
}
