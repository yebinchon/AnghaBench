
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lastRevmapPage; int pagesPerRange; } ;
struct TYPE_4__ {scalar_t__ revmapNumPages; int pagesPerRange; } ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;
typedef TYPE_1__ BrinStatsData ;
typedef TYPE_2__ BrinMetaPageData ;


 int BRIN_METAPAGE_BLKNO ;
 int BUFFER_LOCK_SHARE ;
 int BufferGetPage (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ PageGetContents (int ) ;
 int ReadBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;

void
brinGetStats(Relation index, BrinStatsData *stats)
{
 Buffer metabuffer;
 Page metapage;
 BrinMetaPageData *metadata;

 metabuffer = ReadBuffer(index, BRIN_METAPAGE_BLKNO);
 LockBuffer(metabuffer, BUFFER_LOCK_SHARE);
 metapage = BufferGetPage(metabuffer);
 metadata = (BrinMetaPageData *) PageGetContents(metapage);

 stats->pagesPerRange = metadata->pagesPerRange;
 stats->revmapNumPages = metadata->lastRevmapPage - 1;

 UnlockReleaseBuffer(metabuffer);
}
