
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int m_buf_fsync_backend; int m_buf_written_backend; } ;
struct TYPE_7__ {int num_requests; int requests; scalar_t__ num_backend_fsync; scalar_t__ num_backend_writes; } ;
struct TYPE_6__ {int type; int ftag; } ;
typedef TYPE_1__ CheckpointerRequest ;


 int AmCheckpointerProcess () ;
 TYPE_5__ BgWriterStats ;
 int CheckpointerCommLock ;
 TYPE_4__* CheckpointerShmem ;
 int END_CRIT_SECTION () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int RememberSyncRequest (int *,int ) ;
 int START_CRIT_SECTION () ;
 int memcpy (TYPE_1__*,int ,int) ;
 scalar_t__ palloc (int) ;
 int pfree (TYPE_1__*) ;

void
AbsorbSyncRequests(void)
{
 CheckpointerRequest *requests = ((void*)0);
 CheckpointerRequest *request;
 int n;

 if (!AmCheckpointerProcess())
  return;

 LWLockAcquire(CheckpointerCommLock, LW_EXCLUSIVE);


 BgWriterStats.m_buf_written_backend += CheckpointerShmem->num_backend_writes;
 BgWriterStats.m_buf_fsync_backend += CheckpointerShmem->num_backend_fsync;

 CheckpointerShmem->num_backend_writes = 0;
 CheckpointerShmem->num_backend_fsync = 0;
 n = CheckpointerShmem->num_requests;
 if (n > 0)
 {
  requests = (CheckpointerRequest *) palloc(n * sizeof(CheckpointerRequest));
  memcpy(requests, CheckpointerShmem->requests, n * sizeof(CheckpointerRequest));
 }

 START_CRIT_SECTION();

 CheckpointerShmem->num_requests = 0;

 LWLockRelease(CheckpointerCommLock);

 for (request = requests; n > 0; request++, n--)
  RememberSyncRequest(&request->ftag, request->type);

 END_CRIT_SECTION();

 if (requests)
  pfree(requests);
}
