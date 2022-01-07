
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int t_infomask2; int t_infomask; int frzflags; void* xmax; } ;
typedef TYPE_1__ xl_heap_freeze_tuple ;
typedef int uint16 ;
typedef void* TransactionId ;
struct TYPE_9__ {int t_infomask2; int t_infomask; } ;
typedef TYPE_2__* HeapTupleHeader ;


 int Assert (int) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int FRM_INVALIDATE_XMAX ;
 int FRM_MARK_COMMITTED ;
 int FRM_RETURN_IS_MULTI ;
 int FRM_RETURN_IS_XID ;
 void* FreezeMultiXactId (void*,int,void*,void*,void*,void*,int*) ;
 int GetMultiXactIdHintBits (void*,int*,int*) ;
 int HEAP_HOT_UPDATED ;
 int HEAP_KEYS_UPDATED ;
 int HEAP_MOVED ;
 int HEAP_MOVED_OFF ;
 int HEAP_XMAX_BITS ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_INVALID ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 int HEAP_XMIN_COMMITTED ;
 int HEAP_XMIN_FROZEN ;
 int HEAP_XMIN_INVALID ;
 void* HeapTupleHeaderGetRawXmax (TYPE_2__*) ;
 void* HeapTupleHeaderGetXmin (TYPE_2__*) ;
 void* HeapTupleHeaderGetXvac (TYPE_2__*) ;
 void* InvalidTransactionId ;
 scalar_t__ TransactionIdDidCommit (void*) ;
 scalar_t__ TransactionIdIsNormal (void*) ;
 int TransactionIdIsValid (void*) ;
 int TransactionIdPrecedes (void*,void*) ;
 int XLH_FREEZE_XVAC ;
 int XLH_INVALID_XVAC ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,void*,...) ;

bool
heap_prepare_freeze_tuple(HeapTupleHeader tuple,
        TransactionId relfrozenxid, TransactionId relminmxid,
        TransactionId cutoff_xid, TransactionId cutoff_multi,
        xl_heap_freeze_tuple *frz, bool *totally_frozen_p)
{
 bool changed = 0;
 bool xmax_already_frozen = 0;
 bool xmin_frozen;
 bool freeze_xmax;
 TransactionId xid;

 frz->frzflags = 0;
 frz->t_infomask2 = tuple->t_infomask2;
 frz->t_infomask = tuple->t_infomask;
 frz->xmax = HeapTupleHeaderGetRawXmax(tuple);
 xid = HeapTupleHeaderGetXmin(tuple);
 if (!TransactionIdIsNormal(xid))
  xmin_frozen = 1;
 else
 {
  if (TransactionIdPrecedes(xid, relfrozenxid))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg_internal("found xmin %u from before relfrozenxid %u",
          xid, relfrozenxid)));

  xmin_frozen = TransactionIdPrecedes(xid, cutoff_xid);
  if (xmin_frozen)
  {
   if (!TransactionIdDidCommit(xid))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("uncommitted xmin %u from before xid cutoff %u needs to be frozen",
           xid, cutoff_xid)));

   frz->t_infomask |= HEAP_XMIN_FROZEN;
   changed = 1;
  }
 }
 xid = HeapTupleHeaderGetRawXmax(tuple);

 if (tuple->t_infomask & HEAP_XMAX_IS_MULTI)
 {
  TransactionId newxmax;
  uint16 flags;

  newxmax = FreezeMultiXactId(xid, tuple->t_infomask,
         relfrozenxid, relminmxid,
         cutoff_xid, cutoff_multi, &flags);

  freeze_xmax = (flags & FRM_INVALIDATE_XMAX);

  if (flags & FRM_RETURN_IS_XID)
  {







   frz->t_infomask &= ~HEAP_XMAX_BITS;
   frz->xmax = newxmax;
   if (flags & FRM_MARK_COMMITTED)
    frz->t_infomask |= HEAP_XMAX_COMMITTED;
   changed = 1;
  }
  else if (flags & FRM_RETURN_IS_MULTI)
  {
   uint16 newbits;
   uint16 newbits2;







   frz->t_infomask &= ~HEAP_XMAX_BITS;
   frz->t_infomask2 &= ~HEAP_KEYS_UPDATED;
   GetMultiXactIdHintBits(newxmax, &newbits, &newbits2);
   frz->t_infomask |= newbits;
   frz->t_infomask2 |= newbits2;

   frz->xmax = newxmax;

   changed = 1;
  }
 }
 else if (TransactionIdIsNormal(xid))
 {
  if (TransactionIdPrecedes(xid, relfrozenxid))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg_internal("found xmax %u from before relfrozenxid %u",
          xid, relfrozenxid)));

  if (TransactionIdPrecedes(xid, cutoff_xid))
  {






   if (!HEAP_XMAX_IS_LOCKED_ONLY(tuple->t_infomask) &&
    TransactionIdDidCommit(xid))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("cannot freeze committed xmax %u",
           xid)));
   freeze_xmax = 1;
  }
  else
   freeze_xmax = 0;
 }
 else if ((tuple->t_infomask & HEAP_XMAX_INVALID) ||
    !TransactionIdIsValid(HeapTupleHeaderGetRawXmax(tuple)))
 {
  freeze_xmax = 0;
  xmax_already_frozen = 1;
 }
 else
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg_internal("found xmax %u (infomask 0x%04x) not frozen, not multi, not normal",
         xid, tuple->t_infomask)));

 if (freeze_xmax)
 {
  Assert(!xmax_already_frozen);

  frz->xmax = InvalidTransactionId;






  frz->t_infomask &= ~HEAP_XMAX_BITS;
  frz->t_infomask |= HEAP_XMAX_INVALID;
  frz->t_infomask2 &= ~HEAP_HOT_UPDATED;
  frz->t_infomask2 &= ~HEAP_KEYS_UPDATED;
  changed = 1;
 }





 if (tuple->t_infomask & HEAP_MOVED)
 {
  xid = HeapTupleHeaderGetXvac(tuple);
  if (TransactionIdIsNormal(xid))
  {





   if (tuple->t_infomask & HEAP_MOVED_OFF)
    frz->frzflags |= XLH_INVALID_XVAC;
   else
    frz->frzflags |= XLH_FREEZE_XVAC;





   Assert(!(tuple->t_infomask & HEAP_XMIN_INVALID));
   frz->t_infomask |= HEAP_XMIN_COMMITTED;
   changed = 1;
  }
 }

 *totally_frozen_p = (xmin_frozen &&
       (freeze_xmax || xmax_already_frozen));
 return changed;
}
