
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ginVersion; int nEntries; int nDataPages; int nEntryPages; int nTotalPages; int nPendingPages; } ;
struct TYPE_5__ {int ginVersion; int nEntries; int nDataPages; int nEntryPages; int nTotalPages; int nPendingPages; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__ GinStatsData ;
typedef TYPE_2__ GinMetaPageData ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int GIN_METAPAGE_BLKNO ;
 int GIN_SHARE ;
 TYPE_2__* GinPageGetMeta (int ) ;
 int LockBuffer (int ,int ) ;
 int ReadBuffer (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;

void
ginGetStats(Relation index, GinStatsData *stats)
{
 Buffer metabuffer;
 Page metapage;
 GinMetaPageData *metadata;

 metabuffer = ReadBuffer(index, GIN_METAPAGE_BLKNO);
 LockBuffer(metabuffer, GIN_SHARE);
 metapage = BufferGetPage(metabuffer);
 metadata = GinPageGetMeta(metapage);

 stats->nPendingPages = metadata->nPendingPages;
 stats->nTotalPages = metadata->nTotalPages;
 stats->nEntryPages = metadata->nEntryPages;
 stats->nDataPages = metadata->nDataPages;
 stats->nEntries = metadata->nEntries;
 stats->ginVersion = metadata->ginVersion;

 UnlockReleaseBuffer(metabuffer);
}
