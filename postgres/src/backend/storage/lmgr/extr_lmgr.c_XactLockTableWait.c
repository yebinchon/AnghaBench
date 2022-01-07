
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ oper; int ctid; int rel; } ;
typedef TYPE_1__ XactLockTableWaitInfo ;
typedef scalar_t__ XLTW_Oper ;
typedef int TransactionId ;
struct TYPE_5__ {struct TYPE_5__* previous; TYPE_1__* arg; int callback; } ;
typedef int Relation ;
typedef int LOCKTAG ;
typedef int ItemPointer ;
typedef TYPE_2__ ErrorContextCallback ;


 int Assert (int) ;
 int GetTopTransactionIdIfAny () ;
 int ItemPointerIsValid (int ) ;
 int LockAcquire (int *,int ,int,int) ;
 int LockRelease (int *,int ,int) ;
 int RelationIsValid (int ) ;
 int SET_LOCKTAG_TRANSACTION (int ,int ) ;
 int ShareLock ;
 int SubTransGetTopmostTransaction (int ) ;
 int TransactionIdEquals (int ,int ) ;
 int TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ XLTW_None ;
 int XactLockTableWaitErrorCb ;
 TYPE_2__* error_context_stack ;
 int pg_usleep (long) ;

void
XactLockTableWait(TransactionId xid, Relation rel, ItemPointer ctid,
      XLTW_Oper oper)
{
 LOCKTAG tag;
 XactLockTableWaitInfo info;
 ErrorContextCallback callback;
 bool first = 1;





 if (oper != XLTW_None)
 {
  Assert(RelationIsValid(rel));
  Assert(ItemPointerIsValid(ctid));

  info.rel = rel;
  info.ctid = ctid;
  info.oper = oper;

  callback.callback = XactLockTableWaitErrorCb;
  callback.arg = &info;
  callback.previous = error_context_stack;
  error_context_stack = &callback;
 }

 for (;;)
 {
  Assert(TransactionIdIsValid(xid));
  Assert(!TransactionIdEquals(xid, GetTopTransactionIdIfAny()));

  SET_LOCKTAG_TRANSACTION(tag, xid);

  (void) LockAcquire(&tag, ShareLock, 0, 0);

  LockRelease(&tag, ShareLock, 0);

  if (!TransactionIdIsInProgress(xid))
   break;
  if (!first)
   pg_usleep(1000L);
  first = 0;
  xid = SubTransGetTopmostTransaction(xid);
 }

 if (oper != XLTW_None)
  error_context_stack = callback.previous;
}
