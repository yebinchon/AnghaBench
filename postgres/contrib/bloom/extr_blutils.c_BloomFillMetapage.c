
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int opts; int magickNumber; } ;
struct TYPE_8__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
struct TYPE_7__ {scalar_t__ rd_options; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef int BloomOptions ;
typedef TYPE_3__ BloomMetaPageData ;


 int Assert (int) ;
 int BLOOM_MAGICK_NUMBER ;
 int BLOOM_META ;
 int BloomInitPage (scalar_t__,int ) ;
 TYPE_3__* BloomPageGetMeta (scalar_t__) ;
 int * makeDefaultBloomOptions () ;
 int memset (TYPE_3__*,int ,int) ;

void
BloomFillMetapage(Relation index, Page metaPage)
{
 BloomOptions *opts;
 BloomMetaPageData *metadata;





 opts = (BloomOptions *) index->rd_options;
 if (!opts)
  opts = makeDefaultBloomOptions();





 BloomInitPage(metaPage, BLOOM_META);
 metadata = BloomPageGetMeta(metaPage);
 memset(metadata, 0, sizeof(BloomMetaPageData));
 metadata->magickNumber = BLOOM_MAGICK_NUMBER;
 metadata->opts = *opts;
 ((PageHeader) metaPage)->pd_lower += sizeof(BloomMetaPageData);


 Assert(((PageHeader) metaPage)->pd_lower <= ((PageHeader) metaPage)->pd_upper);
}
