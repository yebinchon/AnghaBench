
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecord ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_7__ {scalar_t__ sentPtr; int mutex; } ;
typedef TYPE_1__ WalSnd ;
struct TYPE_9__ {scalar_t__ EndRecPtr; } ;
struct TYPE_8__ {TYPE_3__* reader; } ;


 int ERROR ;
 scalar_t__ GetFlushRecPtr () ;
 int InvalidXLogRecPtr ;
 int LogicalDecodingProcessRecord (TYPE_2__*,TYPE_3__*) ;
 TYPE_1__* MyWalSnd ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int WalSndCaughtUp ;
 int * XLogReadRecord (TYPE_3__*,int ,char**) ;
 int elog (int ,char*,char*) ;
 int got_SIGUSR2 ;
 scalar_t__ got_STOPPING ;
 TYPE_2__* logical_decoding_ctx ;
 int logical_startptr ;
 scalar_t__ sentPtr ;

__attribute__((used)) static void
XLogSendLogical(void)
{
 XLogRecord *record;
 char *errm;
 XLogRecPtr flushPtr;







 WalSndCaughtUp = 0;

 record = XLogReadRecord(logical_decoding_ctx->reader, logical_startptr, &errm);
 logical_startptr = InvalidXLogRecPtr;


 if (errm != ((void*)0))
  elog(ERROR, "%s", errm);




 flushPtr = GetFlushRecPtr();

 if (record != ((void*)0))
 {





  LogicalDecodingProcessRecord(logical_decoding_ctx, logical_decoding_ctx->reader);

  sentPtr = logical_decoding_ctx->reader->EndRecPtr;
 }


 if (logical_decoding_ctx->reader->EndRecPtr >= flushPtr)
  WalSndCaughtUp = 1;






 if (WalSndCaughtUp && got_STOPPING)
  got_SIGUSR2 = 1;


 {
  WalSnd *walsnd = MyWalSnd;

  SpinLockAcquire(&walsnd->mutex);
  walsnd->sentPtr = sentPtr;
  SpinLockRelease(&walsnd->mutex);
 }
}
