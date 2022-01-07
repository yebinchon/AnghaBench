
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecord ;
typedef int XLogRecPtr ;
struct TYPE_12__ {int EndRecPtr; } ;
struct TYPE_11__ {TYPE_4__* reader; TYPE_2__* slot; } ;
struct TYPE_9__ {int restart_lsn; int confirmed_flush; } ;
struct TYPE_10__ {int mutex; TYPE_1__ data; } ;
typedef TYPE_2__ ReplicationSlot ;
typedef TYPE_3__ LogicalDecodingContext ;


 int CHECK_FOR_INTERRUPTS () ;
 int DEBUG1 ;
 scalar_t__ DecodingContextReady (TYPE_3__*) ;
 int ERROR ;
 int InvalidXLogRecPtr ;
 int LogicalDecodingProcessRecord (TYPE_3__*,TYPE_4__*) ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 int * XLogReadRecord (TYPE_4__*,int,char**) ;
 int elog (int ,char*,...) ;

void
DecodingContextFindStartpoint(LogicalDecodingContext *ctx)
{
 XLogRecPtr startptr;
 ReplicationSlot *slot = ctx->slot;


 startptr = slot->data.restart_lsn;

 elog(DEBUG1, "searching for logical decoding starting point, starting at %X/%X",
   (uint32) (slot->data.restart_lsn >> 32),
   (uint32) slot->data.restart_lsn);


 for (;;)
 {
  XLogRecord *record;
  char *err = ((void*)0);


  record = XLogReadRecord(ctx->reader, startptr, &err);
  if (err)
   elog(ERROR, "%s", err);
  if (!record)
   elog(ERROR, "no record found");

  startptr = InvalidXLogRecPtr;

  LogicalDecodingProcessRecord(ctx, ctx->reader);


  if (DecodingContextReady(ctx))
   break;

  CHECK_FOR_INTERRUPTS();
 }

 SpinLockAcquire(&slot->mutex);
 slot->data.confirmed_flush = ctx->reader->EndRecPtr;
 SpinLockRelease(&slot->mutex);
}
