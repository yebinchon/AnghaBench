
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {scalar_t__ t_data; int t_tableOid; int t_len; int t_self; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef scalar_t__ HeapTupleHeader ;
typedef TYPE_1__ HeapTupleData ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;





 int HeapTupleHeaderGetXmin (scalar_t__) ;
 int HeapTupleHeaderXminCommitted (scalar_t__) ;
 int HeapTupleSatisfiesVacuum (TYPE_1__*,int ,int ) ;
 int InvalidTransactionId ;
 int ItemIdGetLength (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int ItemIdIsNormal (int ) ;
 scalar_t__ ItemIdIsRedirected (int ) ;
 int ItemIdIsUsed (int ) ;
 int ItemPointerSet (int *,int ,scalar_t__) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int OldestXmin ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int RelationGetRelid (int ) ;
 int TransactionIdFollows (int ,int ) ;
 int TransactionIdPrecedes (int ,int ) ;
 int elog (int ,char*) ;
 int heap_tuple_needs_eventual_freeze (scalar_t__) ;

__attribute__((used)) static bool
heap_page_is_all_visible(Relation rel, Buffer buf,
       TransactionId *visibility_cutoff_xid,
       bool *all_frozen)
{
 Page page = BufferGetPage(buf);
 BlockNumber blockno = BufferGetBlockNumber(buf);
 OffsetNumber offnum,
    maxoff;
 bool all_visible = 1;

 *visibility_cutoff_xid = InvalidTransactionId;
 *all_frozen = 1;





 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff && all_visible;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemid;
  HeapTupleData tuple;

  itemid = PageGetItemId(page, offnum);


  if (!ItemIdIsUsed(itemid) || ItemIdIsRedirected(itemid))
   continue;

  ItemPointerSet(&(tuple.t_self), blockno, offnum);





  if (ItemIdIsDead(itemid))
  {
   all_visible = 0;
   *all_frozen = 0;
   break;
  }

  Assert(ItemIdIsNormal(itemid));

  tuple.t_data = (HeapTupleHeader) PageGetItem(page, itemid);
  tuple.t_len = ItemIdGetLength(itemid);
  tuple.t_tableOid = RelationGetRelid(rel);

  switch (HeapTupleSatisfiesVacuum(&tuple, OldestXmin, buf))
  {
   case 129:
    {
     TransactionId xmin;


     if (!HeapTupleHeaderXminCommitted(tuple.t_data))
     {
      all_visible = 0;
      *all_frozen = 0;
      break;
     }





     xmin = HeapTupleHeaderGetXmin(tuple.t_data);
     if (!TransactionIdPrecedes(xmin, OldestXmin))
     {
      all_visible = 0;
      *all_frozen = 0;
      break;
     }


     if (TransactionIdFollows(xmin, *visibility_cutoff_xid))
      *visibility_cutoff_xid = xmin;


     if (all_visible && *all_frozen &&
      heap_tuple_needs_eventual_freeze(tuple.t_data))
      *all_frozen = 0;
    }
    break;

   case 132:
   case 128:
   case 130:
   case 131:
    {
     all_visible = 0;
     *all_frozen = 0;
     break;
    }
   default:
    elog(ERROR, "unexpected HeapTupleSatisfiesVacuum result");
    break;
  }
 }

 return all_visible;
}
