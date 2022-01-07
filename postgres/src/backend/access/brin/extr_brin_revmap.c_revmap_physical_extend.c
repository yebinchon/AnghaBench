
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ targetBlk; } ;
typedef TYPE_1__ xl_brin_revmap_extend ;
typedef int XLogRecPtr ;
struct TYPE_10__ {scalar_t__ lastRevmapPage; } ;
struct TYPE_9__ {scalar_t__ rm_lastRevmapPage; int rm_metaBuf; int rm_irel; int rm_pagesPerRange; } ;
struct TYPE_8__ {int pd_lower; } ;
typedef int Relation ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef int Buffer ;
typedef TYPE_3__ BrinRevmap ;
typedef TYPE_4__ BrinMetaPageData ;
typedef scalar_t__ BlockNumber ;


 int BRIN_IS_REGULAR_PAGE (scalar_t__) ;
 int BRIN_PAGETYPE_REVMAP ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BrinPageType (scalar_t__) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INDEX_CORRUPTED ;
 int ERROR ;
 int ExclusiveLock ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ P_NEW ;
 scalar_t__ PageGetContents (scalar_t__) ;
 int PageIsNew (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RELATION_IS_LOCAL (int ) ;
 int RM_BRIN_ID ;
 int ReadBuffer (int ,scalar_t__) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int ReleaseBuffer (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfBrinRevmapExtend ;
 int UnlockRelationForExtension (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_BRIN_REVMAP_EXTEND ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int ) ;
 int brin_evacuate_page (int ,int ,TYPE_3__*,int ) ;
 int brin_page_init (scalar_t__,int ) ;
 scalar_t__ brin_start_evacuating_page (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ,scalar_t__) ;

__attribute__((used)) static void
revmap_physical_extend(BrinRevmap *revmap)
{
 Buffer buf;
 Page page;
 Page metapage;
 BrinMetaPageData *metadata;
 BlockNumber mapBlk;
 BlockNumber nblocks;
 Relation irel = revmap->rm_irel;
 bool needLock = !RELATION_IS_LOCAL(irel);






 LockBuffer(revmap->rm_metaBuf, BUFFER_LOCK_EXCLUSIVE);
 metapage = BufferGetPage(revmap->rm_metaBuf);
 metadata = (BrinMetaPageData *) PageGetContents(metapage);





 if (metadata->lastRevmapPage != revmap->rm_lastRevmapPage)
 {
  revmap->rm_lastRevmapPage = metadata->lastRevmapPage;
  LockBuffer(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
  return;
 }
 mapBlk = metadata->lastRevmapPage + 1;

 nblocks = RelationGetNumberOfBlocks(irel);
 if (mapBlk < nblocks)
 {
  buf = ReadBuffer(irel, mapBlk);
  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  page = BufferGetPage(buf);
 }
 else
 {
  if (needLock)
   LockRelationForExtension(irel, ExclusiveLock);

  buf = ReadBuffer(irel, P_NEW);
  if (BufferGetBlockNumber(buf) != mapBlk)
  {






   if (needLock)
    UnlockRelationForExtension(irel, ExclusiveLock);
   LockBuffer(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
   ReleaseBuffer(buf);
   return;
  }
  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  page = BufferGetPage(buf);

  if (needLock)
   UnlockRelationForExtension(irel, ExclusiveLock);
 }


 if (!PageIsNew(page) && !BRIN_IS_REGULAR_PAGE(page))
  ereport(ERROR,
    (errcode(ERRCODE_INDEX_CORRUPTED),
     errmsg("unexpected page type 0x%04X in BRIN index \"%s\" block %u",
      BrinPageType(page),
      RelationGetRelationName(irel),
      BufferGetBlockNumber(buf))));


 if (brin_start_evacuating_page(irel, buf))
 {
  LockBuffer(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);
  brin_evacuate_page(irel, revmap->rm_pagesPerRange, revmap, buf);


  return;
 }





 START_CRIT_SECTION();


 brin_page_init(page, BRIN_PAGETYPE_REVMAP);
 MarkBufferDirty(buf);

 metadata->lastRevmapPage = mapBlk;
 ((PageHeader) metapage)->pd_lower =
  ((char *) metadata + sizeof(BrinMetaPageData)) - (char *) metapage;

 MarkBufferDirty(revmap->rm_metaBuf);

 if (RelationNeedsWAL(revmap->rm_irel))
 {
  xl_brin_revmap_extend xlrec;
  XLogRecPtr recptr;

  xlrec.targetBlk = mapBlk;

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBrinRevmapExtend);
  XLogRegisterBuffer(0, revmap->rm_metaBuf, REGBUF_STANDARD);

  XLogRegisterBuffer(1, buf, REGBUF_WILL_INIT);

  recptr = XLogInsert(RM_BRIN_ID, XLOG_BRIN_REVMAP_EXTEND);
  PageSetLSN(metapage, recptr);
  PageSetLSN(page, recptr);
 }

 END_CRIT_SECTION();

 LockBuffer(revmap->rm_metaBuf, BUFFER_LOCK_UNLOCK);

 UnlockReleaseBuffer(buf);
}
