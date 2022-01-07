
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {scalar_t__ lastRevmapPage; int pagesPerRange; int brinVersion; int brinMagic; } ;
struct TYPE_3__ {int pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__ BrinMetaPageData ;
typedef int BlockNumber ;


 int BRIN_META_MAGIC ;
 int BRIN_PAGETYPE_META ;
 scalar_t__ PageGetContents (scalar_t__) ;
 int brin_page_init (scalar_t__,int ) ;

void
brin_metapage_init(Page page, BlockNumber pagesPerRange, uint16 version)
{
 BrinMetaPageData *metadata;

 brin_page_init(page, BRIN_PAGETYPE_META);

 metadata = (BrinMetaPageData *) PageGetContents(page);

 metadata->brinMagic = BRIN_META_MAGIC;
 metadata->brinVersion = version;
 metadata->pagesPerRange = pagesPerRange;






 metadata->lastRevmapPage = 0;






 ((PageHeader) page)->pd_lower =
  ((char *) metadata + sizeof(BrinMetaPageData)) - (char *) page;
}
