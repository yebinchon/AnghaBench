
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pagesPerRange; int lastRevmapPage; } ;
struct TYPE_5__ {int rm_currBuf; int rm_metaBuf; int rm_lastRevmapPage; int rm_pagesPerRange; int rm_irel; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef TYPE_1__ BrinRevmap ;
typedef TYPE_2__ BrinMetaPageData ;
typedef int BlockNumber ;


 int BRIN_METAPAGE_BLKNO ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetContents (int ) ;
 int ReadBuffer (int ,int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 TYPE_1__* palloc (int) ;

BrinRevmap *
brinRevmapInitialize(Relation idxrel, BlockNumber *pagesPerRange,
      Snapshot snapshot)
{
 BrinRevmap *revmap;
 Buffer meta;
 BrinMetaPageData *metadata;
 Page page;

 meta = ReadBuffer(idxrel, BRIN_METAPAGE_BLKNO);
 LockBuffer(meta, BUFFER_LOCK_SHARE);
 page = BufferGetPage(meta);
 TestForOldSnapshot(snapshot, idxrel, page);
 metadata = (BrinMetaPageData *) PageGetContents(page);

 revmap = palloc(sizeof(BrinRevmap));
 revmap->rm_irel = idxrel;
 revmap->rm_pagesPerRange = metadata->pagesPerRange;
 revmap->rm_lastRevmapPage = metadata->lastRevmapPage;
 revmap->rm_metaBuf = meta;
 revmap->rm_currBuf = InvalidBuffer;

 *pagesPerRange = metadata->pagesPerRange;

 LockBuffer(meta, BUFFER_LOCK_UNLOCK);

 return revmap;
}
