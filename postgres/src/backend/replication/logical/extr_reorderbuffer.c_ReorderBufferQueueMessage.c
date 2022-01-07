
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef scalar_t__ TransactionId ;
struct TYPE_15__ {int (* message ) (TYPE_4__*,int *,int ,int,char const*,int ,char const*) ;int context; } ;
struct TYPE_12__ {int message; int message_size; int prefix; } ;
struct TYPE_13__ {TYPE_1__ msg; } ;
struct TYPE_14__ {TYPE_2__ data; int action; } ;
typedef int Snapshot ;
typedef int Size ;
typedef int ReorderBufferTXN ;
typedef TYPE_3__ ReorderBufferChange ;
typedef TYPE_4__ ReorderBuffer ;
typedef int MemoryContext ;


 int Assert (int) ;
 scalar_t__ InvalidTransactionId ;
 int MemoryContextSwitchTo (int ) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int REORDER_BUFFER_CHANGE_MESSAGE ;
 TYPE_3__* ReorderBufferGetChange (TYPE_4__*) ;
 int ReorderBufferQueueChange (TYPE_4__*,scalar_t__,int ,TYPE_3__*) ;
 int * ReorderBufferTXNByXid (TYPE_4__*,scalar_t__,int,int *,int ,int) ;
 int SetupHistoricSnapshot (int volatile,int *) ;
 int TeardownHistoricSnapshot (int) ;
 int memcpy (int ,char const*,int ) ;
 int palloc (int ) ;
 int pstrdup (char const*) ;
 int stub1 (TYPE_4__*,int *,int ,int,char const*,int ,char const*) ;

void
ReorderBufferQueueMessage(ReorderBuffer *rb, TransactionId xid,
        Snapshot snapshot, XLogRecPtr lsn,
        bool transactional, const char *prefix,
        Size message_size, const char *message)
{
 if (transactional)
 {
  MemoryContext oldcontext;
  ReorderBufferChange *change;

  Assert(xid != InvalidTransactionId);

  oldcontext = MemoryContextSwitchTo(rb->context);

  change = ReorderBufferGetChange(rb);
  change->action = REORDER_BUFFER_CHANGE_MESSAGE;
  change->data.msg.prefix = pstrdup(prefix);
  change->data.msg.message_size = message_size;
  change->data.msg.message = palloc(message_size);
  memcpy(change->data.msg.message, message, message_size);

  ReorderBufferQueueChange(rb, xid, lsn, change);

  MemoryContextSwitchTo(oldcontext);
 }
 else
 {
  ReorderBufferTXN *txn = ((void*)0);
  volatile Snapshot snapshot_now = snapshot;

  if (xid != InvalidTransactionId)
   txn = ReorderBufferTXNByXid(rb, xid, 1, ((void*)0), lsn, 1);


  SetupHistoricSnapshot(snapshot_now, ((void*)0));
  PG_TRY();
  {
   rb->message(rb, txn, lsn, 0, prefix, message_size, message);

   TeardownHistoricSnapshot(0);
  }
  PG_CATCH();
  {
   TeardownHistoricSnapshot(1);
   PG_RE_THROW();
  }
  PG_END_TRY();
 }
}
