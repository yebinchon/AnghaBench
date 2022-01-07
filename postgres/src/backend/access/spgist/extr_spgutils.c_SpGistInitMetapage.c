
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int pd_lower; } ;
struct TYPE_7__ {TYPE_2__* cachedPage; } ;
struct TYPE_9__ {TYPE_1__ lastUsedPages; int magicNumber; } ;
struct TYPE_8__ {int blkno; } ;
typedef TYPE_3__ SpGistMetaPageData ;
typedef TYPE_4__* PageHeader ;
typedef scalar_t__ Page ;


 int InvalidBlockNumber ;
 int SPGIST_CACHED_PAGES ;
 int SPGIST_MAGIC_NUMBER ;
 int SPGIST_META ;
 int SpGistInitPage (scalar_t__,int ) ;
 TYPE_3__* SpGistPageGetMeta (scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;

void
SpGistInitMetapage(Page page)
{
 SpGistMetaPageData *metadata;
 int i;

 SpGistInitPage(page, SPGIST_META);
 metadata = SpGistPageGetMeta(page);
 memset(metadata, 0, sizeof(SpGistMetaPageData));
 metadata->magicNumber = SPGIST_MAGIC_NUMBER;


 for (i = 0; i < SPGIST_CACHED_PAGES; i++)
  metadata->lastUsedPages.cachedPage[i].blkno = InvalidBlockNumber;






 ((PageHeader) page)->pd_lower =
  ((char *) metadata + sizeof(SpGistMetaPageData)) - (char *) page;
}
