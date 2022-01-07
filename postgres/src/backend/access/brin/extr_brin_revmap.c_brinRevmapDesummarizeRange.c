
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ regOffset; int heapBlk; int pagesPerRange; } ;
typedef TYPE_1__ xl_brin_desummarize ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int rm_pagesPerRange; } ;
struct TYPE_9__ {int * rm_tids; } ;
typedef TYPE_2__ RevmapContents ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef int ItemId ;
typedef int Buffer ;
typedef int BrinTuple ;
typedef TYPE_3__ BrinRevmap ;
typedef int BlockNumber ;


 int BRIN_IS_REGULAR_PAGE (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (int ) ;
 scalar_t__ BrinTupleIsPlaceholder (int *) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 scalar_t__ HEAPBLK_TO_REVMAP_INDEX (int ,int ) ;
 int ItemIdIsUsed (int ) ;
 int ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 int ItemPointerIsValid (int *) ;
 int ItemPointerSetInvalid (int *) ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetContents (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDeleteNoCompact (int ,scalar_t__) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_BRIN_ID ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBrinDesummarize ;
 int UnlockReleaseBuffer (int ) ;
 int WARNING ;
 int XLOG_BRIN_DESUMMARIZE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int brinLockRevmapPageForUpdate (TYPE_3__*,int ) ;
 TYPE_3__* brinRevmapInitialize (int ,int *,int *) ;
 int brinRevmapTerminate (TYPE_3__*) ;
 int brinSetHeapBlockItemptr (int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int revmap_get_blkno (TYPE_3__*,int ) ;

bool
brinRevmapDesummarizeRange(Relation idxrel, BlockNumber heapBlk)
{
 BrinRevmap *revmap;
 BlockNumber pagesPerRange;
 RevmapContents *contents;
 ItemPointerData *iptr;
 ItemPointerData invalidIptr;
 BlockNumber revmapBlk;
 Buffer revmapBuf;
 Buffer regBuf;
 Page revmapPg;
 Page regPg;
 OffsetNumber revmapOffset;
 OffsetNumber regOffset;
 ItemId lp;
 BrinTuple *tup;

 revmap = brinRevmapInitialize(idxrel, &pagesPerRange, ((void*)0));

 revmapBlk = revmap_get_blkno(revmap, heapBlk);
 if (!BlockNumberIsValid(revmapBlk))
 {

  brinRevmapTerminate(revmap);
  return 1;
 }


 revmapBuf = brinLockRevmapPageForUpdate(revmap, heapBlk);
 revmapPg = BufferGetPage(revmapBuf);
 revmapOffset = HEAPBLK_TO_REVMAP_INDEX(revmap->rm_pagesPerRange, heapBlk);

 contents = (RevmapContents *) PageGetContents(revmapPg);
 iptr = contents->rm_tids;
 iptr += revmapOffset;

 if (!ItemPointerIsValid(iptr))
 {

  LockBuffer(revmapBuf, BUFFER_LOCK_UNLOCK);
  brinRevmapTerminate(revmap);
  return 1;
 }

 regBuf = ReadBuffer(idxrel, ItemPointerGetBlockNumber(iptr));
 LockBuffer(regBuf, BUFFER_LOCK_EXCLUSIVE);
 regPg = BufferGetPage(regBuf);


 if (!BRIN_IS_REGULAR_PAGE(regPg))
 {
  LockBuffer(revmapBuf, BUFFER_LOCK_UNLOCK);
  LockBuffer(regBuf, BUFFER_LOCK_UNLOCK);
  brinRevmapTerminate(revmap);
  return 0;
 }

 regOffset = ItemPointerGetOffsetNumber(iptr);
 if (regOffset > PageGetMaxOffsetNumber(regPg))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("corrupted BRIN index: inconsistent range map")));

 lp = PageGetItemId(regPg, regOffset);
 if (!ItemIdIsUsed(lp))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("corrupted BRIN index: inconsistent range map")));
 tup = (BrinTuple *) PageGetItem(regPg, lp);
 if (BrinTupleIsPlaceholder(tup))
  ereport(WARNING,
    (errmsg("leftover placeholder tuple detected in BRIN index \"%s\", deleting",
      RelationGetRelationName(idxrel))));

 START_CRIT_SECTION();

 ItemPointerSetInvalid(&invalidIptr);
 brinSetHeapBlockItemptr(revmapBuf, revmap->rm_pagesPerRange, heapBlk,
       invalidIptr);
 PageIndexTupleDeleteNoCompact(regPg, regOffset);


 MarkBufferDirty(regBuf);
 MarkBufferDirty(revmapBuf);

 if (RelationNeedsWAL(idxrel))
 {
  xl_brin_desummarize xlrec;
  XLogRecPtr recptr;

  xlrec.pagesPerRange = revmap->rm_pagesPerRange;
  xlrec.heapBlk = heapBlk;
  xlrec.regOffset = regOffset;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBrinDesummarize);
  XLogRegisterBuffer(0, revmapBuf, 0);
  XLogRegisterBuffer(1, regBuf, REGBUF_STANDARD);
  recptr = XLogInsert(RM_BRIN_ID, XLOG_BRIN_DESUMMARIZE);
  PageSetLSN(revmapPg, recptr);
  PageSetLSN(regPg, recptr);
 }

 END_CRIT_SECTION();

 UnlockReleaseBuffer(regBuf);
 LockBuffer(revmapBuf, BUFFER_LOCK_UNLOCK);
 brinRevmapTerminate(revmap);

 return 1;
}
