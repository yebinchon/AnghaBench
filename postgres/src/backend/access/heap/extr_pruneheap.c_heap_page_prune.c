
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {scalar_t__ pd_prune_xid; } ;
struct TYPE_4__ {scalar_t__ new_prune_xid; int nredirected; int ndead; int nunused; int latestRemovedXid; int nowunused; int nowdead; int redirected; scalar_t__* marked; } ;
typedef int Relation ;
typedef TYPE_1__ PruneState ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef size_t OffsetNumber ;
typedef int ItemId ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 size_t FirstOffsetNumber ;
 scalar_t__ InvalidTransactionId ;
 scalar_t__ ItemIdIsDead (int ) ;
 int ItemIdIsUsed (int ) ;
 int MarkBufferDirty (int ) ;
 int MarkBufferDirtyHint (int ,int) ;
 size_t OffsetNumberNext (size_t) ;
 int PageClearFull (scalar_t__) ;
 int PageGetItemId (scalar_t__,size_t) ;
 size_t PageGetMaxOffsetNumber (scalar_t__) ;
 scalar_t__ PageIsFull (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int heap_page_prune_execute (int ,int ,scalar_t__,int ,int,int ,scalar_t__) ;
 scalar_t__ heap_prune_chain (int ,int ,size_t,int ,TYPE_1__*) ;
 int log_heap_clean (int ,int ,int ,scalar_t__,int ,int,int ,scalar_t__,int ) ;
 int memset (scalar_t__*,int ,int) ;
 int pgstat_update_heap_dead_tuples (int ,int) ;

int
heap_page_prune(Relation relation, Buffer buffer, TransactionId OldestXmin,
    bool report_stats, TransactionId *latestRemovedXid)
{
 int ndeleted = 0;
 Page page = BufferGetPage(buffer);
 OffsetNumber offnum,
    maxoff;
 PruneState prstate;
 prstate.new_prune_xid = InvalidTransactionId;
 prstate.latestRemovedXid = *latestRemovedXid;
 prstate.nredirected = prstate.ndead = prstate.nunused = 0;
 memset(prstate.marked, 0, sizeof(prstate.marked));


 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemid;


  if (prstate.marked[offnum])
   continue;


  itemid = PageGetItemId(page, offnum);
  if (!ItemIdIsUsed(itemid) || ItemIdIsDead(itemid))
   continue;


  ndeleted += heap_prune_chain(relation, buffer, offnum,
          OldestXmin,
          &prstate);
 }


 START_CRIT_SECTION();


 if (prstate.nredirected > 0 || prstate.ndead > 0 || prstate.nunused > 0)
 {




  heap_page_prune_execute(buffer,
        prstate.redirected, prstate.nredirected,
        prstate.nowdead, prstate.ndead,
        prstate.nowunused, prstate.nunused);





  ((PageHeader) page)->pd_prune_xid = prstate.new_prune_xid;






  PageClearFull(page);

  MarkBufferDirty(buffer);




  if (RelationNeedsWAL(relation))
  {
   XLogRecPtr recptr;

   recptr = log_heap_clean(relation, buffer,
         prstate.redirected, prstate.nredirected,
         prstate.nowdead, prstate.ndead,
         prstate.nowunused, prstate.nunused,
         prstate.latestRemovedXid);

   PageSetLSN(BufferGetPage(buffer), recptr);
  }
 }
 else
 {
  if (((PageHeader) page)->pd_prune_xid != prstate.new_prune_xid ||
   PageIsFull(page))
  {
   ((PageHeader) page)->pd_prune_xid = prstate.new_prune_xid;
   PageClearFull(page);
   MarkBufferDirtyHint(buffer, 1);
  }
 }

 END_CRIT_SECTION();






 if (report_stats && ndeleted > prstate.ndead)
  pgstat_update_heap_dead_tuples(relation, ndeleted - prstate.ndead);

 *latestRemovedXid = prstate.latestRemovedXid;
 return ndeleted;
}
