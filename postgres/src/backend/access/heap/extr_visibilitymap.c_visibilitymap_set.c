
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
typedef size_t uint32 ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_5__ {int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int DEBUG1 ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ HEAPBLK_TO_MAPBLOCK (scalar_t__) ;
 size_t HEAPBLK_TO_MAPBYTE (scalar_t__) ;
 int HEAPBLK_TO_OFFSET (scalar_t__) ;
 scalar_t__ InRecovery ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetContents (int ) ;
 int PageIsAllVisible (int ) ;
 int PageSetLSN (int ,int ) ;
 int RelationGetRelationName (TYPE_1__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_1__*) ;
 int START_CRIT_SECTION () ;
 int VISIBILITYMAP_VALID_BITS ;
 scalar_t__ XLogHintBitIsNeeded () ;
 scalar_t__ XLogRecPtrIsInvalid (int ) ;
 int elog (int ,char*,...) ;
 int log_heap_visible (int ,int ,int ,int ,int) ;

void
visibilitymap_set(Relation rel, BlockNumber heapBlk, Buffer heapBuf,
      XLogRecPtr recptr, Buffer vmBuf, TransactionId cutoff_xid,
      uint8 flags)
{
 BlockNumber mapBlock = HEAPBLK_TO_MAPBLOCK(heapBlk);
 uint32 mapByte = HEAPBLK_TO_MAPBYTE(heapBlk);
 uint8 mapOffset = HEAPBLK_TO_OFFSET(heapBlk);
 Page page;
 uint8 *map;





 Assert(InRecovery || XLogRecPtrIsInvalid(recptr));
 Assert(InRecovery || BufferIsValid(heapBuf));
 Assert(flags & VISIBILITYMAP_VALID_BITS);


 if (BufferIsValid(heapBuf) && BufferGetBlockNumber(heapBuf) != heapBlk)
  elog(ERROR, "wrong heap buffer passed to visibilitymap_set");


 if (!BufferIsValid(vmBuf) || BufferGetBlockNumber(vmBuf) != mapBlock)
  elog(ERROR, "wrong VM buffer passed to visibilitymap_set");

 page = BufferGetPage(vmBuf);
 map = (uint8 *) PageGetContents(page);
 LockBuffer(vmBuf, BUFFER_LOCK_EXCLUSIVE);

 if (flags != (map[mapByte] >> mapOffset & VISIBILITYMAP_VALID_BITS))
 {
  START_CRIT_SECTION();

  map[mapByte] |= (flags << mapOffset);
  MarkBufferDirty(vmBuf);

  if (RelationNeedsWAL(rel))
  {
   if (XLogRecPtrIsInvalid(recptr))
   {
    Assert(!InRecovery);
    recptr = log_heap_visible(rel->rd_node, heapBuf, vmBuf,
            cutoff_xid, flags);





    if (XLogHintBitIsNeeded())
    {
     Page heapPage = BufferGetPage(heapBuf);


     Assert(PageIsAllVisible(heapPage));
     PageSetLSN(heapPage, recptr);
    }
   }
   PageSetLSN(page, recptr);
  }

  END_CRIT_SECTION();
 }

 LockBuffer(vmBuf, BUFFER_LOCK_UNLOCK);
}
