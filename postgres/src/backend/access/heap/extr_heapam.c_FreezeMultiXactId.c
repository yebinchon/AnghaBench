
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16 ;
typedef int TransactionId ;
struct TYPE_6__ {int xid; int status; } ;
typedef TYPE_1__ MultiXactMember ;
typedef int MultiXactId ;


 int Assert (int) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERROR ;
 int FRM_INVALIDATE_XMAX ;
 int FRM_MARK_COMMITTED ;
 int FRM_NOOP ;
 int FRM_RETURN_IS_MULTI ;
 int FRM_RETURN_IS_XID ;
 int GetMultiXactIdMembers (int ,TYPE_1__**,int,scalar_t__) ;
 scalar_t__ HEAP_LOCKED_UPGRADED (int) ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 int HEAP_XMAX_IS_MULTI ;
 scalar_t__ ISUPDATE_from_mxstatus (int ) ;
 int InvalidTransactionId ;
 int MultiXactIdCreateFromMembers (int,TYPE_1__*) ;
 int MultiXactIdGetUpdateXid (int ,int) ;
 scalar_t__ MultiXactIdIsRunning (int ,scalar_t__) ;
 int MultiXactIdIsValid (int ) ;
 scalar_t__ MultiXactIdPrecedes (int ,int ) ;
 scalar_t__ TransactionIdDidCommit (int ) ;
 scalar_t__ TransactionIdIsCurrentTransactionId (int ) ;
 scalar_t__ TransactionIdIsInProgress (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,int ,...) ;
 TYPE_1__* palloc (int) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static TransactionId
FreezeMultiXactId(MultiXactId multi, uint16 t_infomask,
      TransactionId relfrozenxid, TransactionId relminmxid,
      TransactionId cutoff_xid, MultiXactId cutoff_multi,
      uint16 *flags)
{
 TransactionId xid = InvalidTransactionId;
 int i;
 MultiXactMember *members;
 int nmembers;
 bool need_replace;
 int nnewmembers;
 MultiXactMember *newmembers;
 bool has_lockers;
 TransactionId update_xid;
 bool update_committed;

 *flags = 0;


 Assert(t_infomask & HEAP_XMAX_IS_MULTI);

 if (!MultiXactIdIsValid(multi) ||
  HEAP_LOCKED_UPGRADED(t_infomask))
 {

  *flags |= FRM_INVALIDATE_XMAX;
  return InvalidTransactionId;
 }
 else if (MultiXactIdPrecedes(multi, relminmxid))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg_internal("found multixact %u from before relminmxid %u",
         multi, relminmxid)));
 else if (MultiXactIdPrecedes(multi, cutoff_multi))
 {






  if (MultiXactIdIsRunning(multi,
         HEAP_XMAX_IS_LOCKED_ONLY(t_infomask)))
   ereport(ERROR,
     (errcode(ERRCODE_DATA_CORRUPTED),
      errmsg_internal("multixact %u from before cutoff %u found to be still running",
          multi, cutoff_multi)));

  if (HEAP_XMAX_IS_LOCKED_ONLY(t_infomask))
  {
   *flags |= FRM_INVALIDATE_XMAX;
   xid = InvalidTransactionId;
  }
  else
  {

   xid = MultiXactIdGetUpdateXid(multi, t_infomask);


   Assert(TransactionIdIsValid(xid));

   if (TransactionIdPrecedes(xid, relfrozenxid))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("found update xid %u from before relfrozenxid %u",
           xid, relfrozenxid)));





   if (TransactionIdPrecedes(xid, cutoff_xid))
   {
    if (TransactionIdDidCommit(xid))
     ereport(ERROR,
       (errcode(ERRCODE_DATA_CORRUPTED),
        errmsg_internal("cannot freeze committed update xid %u", xid)));
    *flags |= FRM_INVALIDATE_XMAX;
    xid = InvalidTransactionId;
   }
   else
   {
    *flags |= FRM_RETURN_IS_XID;
   }
  }

  return xid;
 }
 nmembers =
  GetMultiXactIdMembers(multi, &members, 0,
         HEAP_XMAX_IS_LOCKED_ONLY(t_infomask));
 if (nmembers <= 0)
 {

  *flags |= FRM_INVALIDATE_XMAX;
  return InvalidTransactionId;
 }


 need_replace = 0;
 for (i = 0; i < nmembers; i++)
 {
  if (TransactionIdPrecedes(members[i].xid, cutoff_xid))
  {
   need_replace = 1;
   break;
  }
 }





 if (!need_replace)
 {
  *flags |= FRM_NOOP;
  pfree(members);
  return InvalidTransactionId;
 }





 nnewmembers = 0;
 newmembers = palloc(sizeof(MultiXactMember) * nmembers);
 has_lockers = 0;
 update_xid = InvalidTransactionId;
 update_committed = 0;

 for (i = 0; i < nmembers; i++)
 {



  if (ISUPDATE_from_mxstatus(members[i].status))
  {
   TransactionId xid = members[i].xid;

   Assert(TransactionIdIsValid(xid));
   if (TransactionIdPrecedes(xid, relfrozenxid))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("found update xid %u from before relfrozenxid %u",
           xid, relfrozenxid)));
   if (TransactionIdIsCurrentTransactionId(xid) ||
    TransactionIdIsInProgress(xid))
   {
    Assert(!TransactionIdIsValid(update_xid));
    update_xid = xid;
   }
   else if (TransactionIdDidCommit(xid))
   {





    Assert(!TransactionIdIsValid(update_xid));
    update_committed = 1;
    update_xid = xid;
   }
   else
   {




   }







   if (TransactionIdIsValid(update_xid) &&
    TransactionIdPrecedes(update_xid, cutoff_xid))
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg_internal("found update xid %u from before xid cutoff %u",
           update_xid, cutoff_xid)));
   if (TransactionIdIsValid(update_xid))
    newmembers[nnewmembers++] = members[i];
  }
  else
  {

   if (TransactionIdIsCurrentTransactionId(members[i].xid) ||
    TransactionIdIsInProgress(members[i].xid))
   {

    Assert(!TransactionIdPrecedes(members[i].xid, cutoff_xid));
    newmembers[nnewmembers++] = members[i];
    has_lockers = 1;
   }
  }
 }

 pfree(members);

 if (nnewmembers == 0)
 {

  *flags |= FRM_INVALIDATE_XMAX;
  xid = InvalidTransactionId;
 }
 else if (TransactionIdIsValid(update_xid) && !has_lockers)
 {







  Assert(nnewmembers == 1);
  *flags |= FRM_RETURN_IS_XID;
  if (update_committed)
   *flags |= FRM_MARK_COMMITTED;
  xid = update_xid;
 }
 else
 {




  xid = MultiXactIdCreateFromMembers(nnewmembers, newmembers);
  *flags |= FRM_RETURN_IS_MULTI;
 }

 pfree(newmembers);

 return xid;
}
