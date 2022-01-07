
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_3__ {int num_dead_tuples; int latestRemovedXid; int * dead_tuples; } ;
typedef int Relation ;
typedef int Page ;
typedef int OffsetNumber ;
typedef TYPE_1__ LVRelStats ;
typedef int ItemId ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int ) ;
 int BufferGetPage (int ) ;
 int BufferIsValid (int ) ;
 int END_CRIT_SECTION () ;
 int InvalidXLogRecPtr ;
 int ItemIdSetUnused (int ) ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int MarkBufferDirty (int ) ;
 int MaxOffsetNumber ;
 int PROGRESS_VACUUM_HEAP_BLKS_VACUUMED ;
 int PageGetItemId (int ,int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 int PageRepairFragmentation (int ) ;
 int PageSetAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int VISIBILITYMAP_ALL_FROZEN ;
 int VISIBILITYMAP_ALL_VISIBLE ;
 scalar_t__ heap_page_is_all_visible (int ,int ,int *,int*) ;
 int log_heap_clean (int ,int ,int *,int ,int *,int ,int *,int,int ) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 int visibilitymap_get_status (int ,scalar_t__,int *) ;
 int visibilitymap_set (int ,scalar_t__,int ,int ,int ,int ,int) ;

__attribute__((used)) static int
lazy_vacuum_page(Relation onerel, BlockNumber blkno, Buffer buffer,
     int tupindex, LVRelStats *vacrelstats, Buffer *vmbuffer)
{
 Page page = BufferGetPage(buffer);
 OffsetNumber unused[MaxOffsetNumber];
 int uncnt = 0;
 TransactionId visibility_cutoff_xid;
 bool all_frozen;

 pgstat_progress_update_param(PROGRESS_VACUUM_HEAP_BLKS_VACUUMED, blkno);

 START_CRIT_SECTION();

 for (; tupindex < vacrelstats->num_dead_tuples; tupindex++)
 {
  BlockNumber tblk;
  OffsetNumber toff;
  ItemId itemid;

  tblk = ItemPointerGetBlockNumber(&vacrelstats->dead_tuples[tupindex]);
  if (tblk != blkno)
   break;
  toff = ItemPointerGetOffsetNumber(&vacrelstats->dead_tuples[tupindex]);
  itemid = PageGetItemId(page, toff);
  ItemIdSetUnused(itemid);
  unused[uncnt++] = toff;
 }

 PageRepairFragmentation(page);




 MarkBufferDirty(buffer);


 if (RelationNeedsWAL(onerel))
 {
  XLogRecPtr recptr;

  recptr = log_heap_clean(onerel, buffer,
        ((void*)0), 0, ((void*)0), 0,
        unused, uncnt,
        vacrelstats->latestRemovedXid);
  PageSetLSN(page, recptr);
 }







 END_CRIT_SECTION();







 if (heap_page_is_all_visible(onerel, buffer, &visibility_cutoff_xid,
         &all_frozen))
  PageSetAllVisible(page);






 if (PageIsAllVisible(page))
 {
  uint8 vm_status = visibilitymap_get_status(onerel, blkno, vmbuffer);
  uint8 flags = 0;


  if ((vm_status & VISIBILITYMAP_ALL_VISIBLE) == 0)
   flags |= VISIBILITYMAP_ALL_VISIBLE;
  if ((vm_status & VISIBILITYMAP_ALL_FROZEN) == 0 && all_frozen)
   flags |= VISIBILITYMAP_ALL_FROZEN;

  Assert(BufferIsValid(*vmbuffer));
  if (flags != 0)
   visibilitymap_set(onerel, blkno, buffer, InvalidXLogRecPtr,
         *vmbuffer, visibility_cutoff_xid, flags);
 }

 return tupindex;
}
