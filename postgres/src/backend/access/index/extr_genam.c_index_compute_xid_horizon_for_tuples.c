
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_2__ {int t_tid; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef TYPE_1__* IndexTuple ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int InvalidTransactionId ;
 int ItemPointerCopy (int *,int *) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ palloc (int) ;
 int pfree (int *) ;
 int table_compute_xid_horizon_for_tuples (int ,int *,int) ;

TransactionId
index_compute_xid_horizon_for_tuples(Relation irel,
          Relation hrel,
          Buffer ibuf,
          OffsetNumber *itemnos,
          int nitems)
{
 ItemPointerData *ttids =
 (ItemPointerData *) palloc(sizeof(ItemPointerData) * nitems);
 TransactionId latestRemovedXid = InvalidTransactionId;
 Page ipage = BufferGetPage(ibuf);
 IndexTuple itup;


 for (int i = 0; i < nitems; i++)
 {
  ItemId iitemid;

  iitemid = PageGetItemId(ipage, itemnos[i]);
  itup = (IndexTuple) PageGetItem(ipage, iitemid);

  ItemPointerCopy(&itup->t_tid, &ttids[i]);
 }


 latestRemovedXid =
  table_compute_xid_horizon_for_tuples(hrel, ttids, nitems);

 pfree(ttids);

 return latestRemovedXid;
}
