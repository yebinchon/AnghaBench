
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16 ;
typedef scalar_t__ TransactionId ;
typedef int MultiXactStatus ;
typedef int MultiXactId ;
typedef int LockTupleMode ;


 int Assert (int) ;
 int ERROR ;
 int GetMultiXactIdHintBits (scalar_t__,int*,int*) ;
 int HEAP_KEYS_UPDATED ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int) ;
 int HEAP_XMAX_COMMITTED ;
 int HEAP_XMAX_EXCL_LOCK ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_EXCL_LOCKED (int) ;
 scalar_t__ HEAP_XMAX_IS_KEYSHR_LOCKED (int) ;
 int HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 scalar_t__ HEAP_XMAX_IS_SHR_LOCKED (int) ;
 int HEAP_XMAX_KEYSHR_LOCK ;
 int HEAP_XMAX_LOCK_ONLY ;
 int HEAP_XMAX_SHR_LOCK ;
 scalar_t__ InvalidTransactionId ;




 scalar_t__ MultiXactIdCreate (scalar_t__,int ,scalar_t__,int ) ;
 scalar_t__ MultiXactIdExpand (int ,scalar_t__,int ) ;
 scalar_t__ MultiXactIdGetUpdateXid (scalar_t__,int) ;
 int MultiXactIdIsRunning (scalar_t__,int) ;
 int MultiXactStatusForKeyShare ;
 int MultiXactStatusForNoKeyUpdate ;
 int MultiXactStatusForShare ;
 int MultiXactStatusForUpdate ;
 int MultiXactStatusNoKeyUpdate ;
 int MultiXactStatusUpdate ;
 int TUPLOCK_from_mxstatus (int ) ;
 scalar_t__ TransactionIdDidCommit (scalar_t__) ;
 int TransactionIdIsCurrentTransactionId (scalar_t__) ;
 scalar_t__ TransactionIdIsInProgress (scalar_t__) ;
 int WARNING ;
 int elog (int ,char*,...) ;
 int get_mxact_status_for_lock (int,int) ;

__attribute__((used)) static void
compute_new_xmax_infomask(TransactionId xmax, uint16 old_infomask,
        uint16 old_infomask2, TransactionId add_to_xmax,
        LockTupleMode mode, bool is_update,
        TransactionId *result_xmax, uint16 *result_infomask,
        uint16 *result_infomask2)
{
 TransactionId new_xmax;
 uint16 new_infomask,
    new_infomask2;

 Assert(TransactionIdIsCurrentTransactionId(add_to_xmax));

l5:
 new_infomask = 0;
 new_infomask2 = 0;
 if (old_infomask & HEAP_XMAX_INVALID)
 {
  if (is_update)
  {
   new_xmax = add_to_xmax;
   if (mode == 131)
    new_infomask2 |= HEAP_KEYS_UPDATED;
  }
  else
  {
   new_infomask |= HEAP_XMAX_LOCK_ONLY;
   switch (mode)
   {
    case 130:
     new_xmax = add_to_xmax;
     new_infomask |= HEAP_XMAX_KEYSHR_LOCK;
     break;
    case 128:
     new_xmax = add_to_xmax;
     new_infomask |= HEAP_XMAX_SHR_LOCK;
     break;
    case 129:
     new_xmax = add_to_xmax;
     new_infomask |= HEAP_XMAX_EXCL_LOCK;
     break;
    case 131:
     new_xmax = add_to_xmax;
     new_infomask |= HEAP_XMAX_EXCL_LOCK;
     new_infomask2 |= HEAP_KEYS_UPDATED;
     break;
    default:
     new_xmax = InvalidTransactionId;
     elog(ERROR, "invalid lock mode");
   }
  }
 }
 else if (old_infomask & HEAP_XMAX_IS_MULTI)
 {
  MultiXactStatus new_status;





  Assert(!(old_infomask & HEAP_XMAX_COMMITTED));
  if (HEAP_LOCKED_UPGRADED(old_infomask))
  {
   old_infomask &= ~HEAP_XMAX_IS_MULTI;
   old_infomask |= HEAP_XMAX_INVALID;
   goto l5;
  }
  if (!MultiXactIdIsRunning(xmax, HEAP_XMAX_IS_LOCKED_ONLY(old_infomask)))
  {
   if (HEAP_XMAX_IS_LOCKED_ONLY(old_infomask) ||
    !TransactionIdDidCommit(MultiXactIdGetUpdateXid(xmax,
                old_infomask)))
   {




    old_infomask &= ~HEAP_XMAX_IS_MULTI;
    old_infomask |= HEAP_XMAX_INVALID;
    goto l5;
   }
  }

  new_status = get_mxact_status_for_lock(mode, is_update);

  new_xmax = MultiXactIdExpand((MultiXactId) xmax, add_to_xmax,
          new_status);
  GetMultiXactIdHintBits(new_xmax, &new_infomask, &new_infomask2);
 }
 else if (old_infomask & HEAP_XMAX_COMMITTED)
 {




  MultiXactStatus status;
  MultiXactStatus new_status;

  if (old_infomask2 & HEAP_KEYS_UPDATED)
   status = MultiXactStatusUpdate;
  else
   status = MultiXactStatusNoKeyUpdate;

  new_status = get_mxact_status_for_lock(mode, is_update);






  new_xmax = MultiXactIdCreate(xmax, status, add_to_xmax, new_status);
  GetMultiXactIdHintBits(new_xmax, &new_infomask, &new_infomask2);
 }
 else if (TransactionIdIsInProgress(xmax))
 {





  MultiXactStatus new_status;
  MultiXactStatus old_status;
  LockTupleMode old_mode;

  if (HEAP_XMAX_IS_LOCKED_ONLY(old_infomask))
  {
   if (HEAP_XMAX_IS_KEYSHR_LOCKED(old_infomask))
    old_status = MultiXactStatusForKeyShare;
   else if (HEAP_XMAX_IS_SHR_LOCKED(old_infomask))
    old_status = MultiXactStatusForShare;
   else if (HEAP_XMAX_IS_EXCL_LOCKED(old_infomask))
   {
    if (old_infomask2 & HEAP_KEYS_UPDATED)
     old_status = MultiXactStatusForUpdate;
    else
     old_status = MultiXactStatusForNoKeyUpdate;
   }
   else
   {






    elog(WARNING, "LOCK_ONLY found for Xid in progress %u", xmax);
    old_infomask |= HEAP_XMAX_INVALID;
    old_infomask &= ~HEAP_XMAX_LOCK_ONLY;
    goto l5;
   }
  }
  else
  {

   if (old_infomask2 & HEAP_KEYS_UPDATED)
    old_status = MultiXactStatusUpdate;
   else
    old_status = MultiXactStatusNoKeyUpdate;
  }

  old_mode = TUPLOCK_from_mxstatus(old_status);






  if (xmax == add_to_xmax)
  {
   Assert(HEAP_XMAX_IS_LOCKED_ONLY(old_infomask));


   if (mode < old_mode)
    mode = old_mode;


   old_infomask |= HEAP_XMAX_INVALID;
   goto l5;
  }


  new_status = get_mxact_status_for_lock(mode, is_update);
  new_xmax = MultiXactIdCreate(xmax, old_status,
          add_to_xmax, new_status);
  GetMultiXactIdHintBits(new_xmax, &new_infomask, &new_infomask2);
 }
 else if (!HEAP_XMAX_IS_LOCKED_ONLY(old_infomask) &&
    TransactionIdDidCommit(xmax))
 {




  MultiXactStatus status;
  MultiXactStatus new_status;

  if (old_infomask2 & HEAP_KEYS_UPDATED)
   status = MultiXactStatusUpdate;
  else
   status = MultiXactStatusNoKeyUpdate;

  new_status = get_mxact_status_for_lock(mode, is_update);






  new_xmax = MultiXactIdCreate(xmax, status, add_to_xmax, new_status);
  GetMultiXactIdHintBits(new_xmax, &new_infomask, &new_infomask2);
 }
 else
 {






  old_infomask |= HEAP_XMAX_INVALID;
  goto l5;
 }

 *result_infomask = new_infomask;
 *result_infomask2 = new_infomask2;
 *result_xmax = new_xmax;
}
