
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ginVersion; scalar_t__ nEntries; scalar_t__ nDataPages; scalar_t__ nEntryPages; scalar_t__ nTotalPages; scalar_t__ nPendingHeapTuples; scalar_t__ nPendingPages; scalar_t__ tailFreeSize; int tail; int head; } ;
struct TYPE_4__ {int pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__ GinMetaPageData ;
typedef int Buffer ;


 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int GIN_CURRENT_VERSION ;
 int GIN_META ;
 int GinInitPage (scalar_t__,int ,int ) ;
 TYPE_2__* GinPageGetMeta (scalar_t__) ;
 int InvalidBlockNumber ;

void
GinInitMetabuffer(Buffer b)
{
 GinMetaPageData *metadata;
 Page page = BufferGetPage(b);

 GinInitPage(page, GIN_META, BufferGetPageSize(b));

 metadata = GinPageGetMeta(page);

 metadata->head = metadata->tail = InvalidBlockNumber;
 metadata->tailFreeSize = 0;
 metadata->nPendingPages = 0;
 metadata->nPendingHeapTuples = 0;
 metadata->nTotalPages = 0;
 metadata->nEntryPages = 0;
 metadata->nDataPages = 0;
 metadata->nEntries = 0;
 metadata->ginVersion = GIN_CURRENT_VERSION;






 ((PageHeader) page)->pd_lower =
  ((char *) metadata + sizeof(GinMetaPageData)) - (char *) page;
}
