
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int pd_lower; } ;
struct TYPE_10__ {scalar_t__ rd_amcache; } ;
struct TYPE_9__ {int lastUsedPages; } ;
struct TYPE_8__ {int lastUsedPages; } ;
typedef TYPE_1__ SpGistMetaPageData ;
typedef TYPE_2__ SpGistCache ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__* PageHeader ;
typedef scalar_t__ Page ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ ConditionalLockBuffer (int ) ;
 int MarkBufferDirty (int ) ;
 int ReadBuffer (TYPE_3__*,int ) ;
 int ReleaseBuffer (int ) ;
 int SPGIST_METAPAGE_BLKNO ;
 TYPE_1__* SpGistPageGetMeta (scalar_t__) ;
 int UnlockReleaseBuffer (int ) ;

void
SpGistUpdateMetaPage(Relation index)
{
 SpGistCache *cache = (SpGistCache *) index->rd_amcache;

 if (cache != ((void*)0))
 {
  Buffer metabuffer;

  metabuffer = ReadBuffer(index, SPGIST_METAPAGE_BLKNO);

  if (ConditionalLockBuffer(metabuffer))
  {
   Page metapage = BufferGetPage(metabuffer);
   SpGistMetaPageData *metadata = SpGistPageGetMeta(metapage);

   metadata->lastUsedPages = cache->lastUsedPages;
   ((PageHeader) metapage)->pd_lower =
    ((char *) metadata + sizeof(SpGistMetaPageData)) - (char *) metapage;

   MarkBufferDirty(metabuffer);
   UnlockReleaseBuffer(metabuffer);
  }
  else
  {
   ReleaseBuffer(metabuffer);
  }
 }
}
