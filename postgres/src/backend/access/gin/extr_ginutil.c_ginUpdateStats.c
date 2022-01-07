
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int metadata; int prevTail; int newRightlink; scalar_t__ ntuples; int node; } ;
typedef TYPE_1__ ginxlogUpdateMeta ;
typedef int XLogRecPtr ;
struct TYPE_16__ {int nEntries; int nDataPages; int nEntryPages; int nTotalPages; } ;
struct TYPE_15__ {int nEntries; int nDataPages; int nEntryPages; int nTotalPages; } ;
struct TYPE_14__ {int pd_lower; } ;
struct TYPE_13__ {int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_4__ GinStatsData ;
typedef TYPE_5__ GinMetaPageData ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int GIN_EXCLUSIVE ;
 int GIN_METAPAGE_BLKNO ;
 TYPE_5__* GinPageGetMeta (scalar_t__) ;
 int InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_GIN_ID ;
 int ReadBuffer (TYPE_2__*,int ) ;
 scalar_t__ RelationNeedsWAL (TYPE_2__*) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_GIN_UPDATE_META_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int) ;
 int XLogRegisterData (char*,int) ;
 int memcpy (int *,TYPE_5__*,int) ;

void
ginUpdateStats(Relation index, const GinStatsData *stats, bool is_build)
{
 Buffer metabuffer;
 Page metapage;
 GinMetaPageData *metadata;

 metabuffer = ReadBuffer(index, GIN_METAPAGE_BLKNO);
 LockBuffer(metabuffer, GIN_EXCLUSIVE);
 metapage = BufferGetPage(metabuffer);
 metadata = GinPageGetMeta(metapage);

 START_CRIT_SECTION();

 metadata->nTotalPages = stats->nTotalPages;
 metadata->nEntryPages = stats->nEntryPages;
 metadata->nDataPages = stats->nDataPages;
 metadata->nEntries = stats->nEntries;
 ((PageHeader) metapage)->pd_lower =
  ((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;

 MarkBufferDirty(metabuffer);

 if (RelationNeedsWAL(index) && !is_build)
 {
  XLogRecPtr recptr;
  ginxlogUpdateMeta data;

  data.node = index->rd_node;
  data.ntuples = 0;
  data.newRightlink = data.prevTail = InvalidBlockNumber;
  memcpy(&data.metadata, metadata, sizeof(GinMetaPageData));

  XLogBeginInsert();
  XLogRegisterData((char *) &data, sizeof(ginxlogUpdateMeta));
  XLogRegisterBuffer(0, metabuffer, REGBUF_WILL_INIT | REGBUF_STANDARD);

  recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_UPDATE_META_PAGE);
  PageSetLSN(metapage, recptr);
 }

 UnlockReleaseBuffer(metabuffer);

 END_CRIT_SECTION();
}
