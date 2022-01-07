
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_14__ {scalar_t__ pageDataCxt; scalar_t__ nPageData; scalar_t__ curPageData; int qual_ok; } ;
struct TYPE_11__ {int parentlsn; } ;
struct TYPE_13__ {int * distances; TYPE_1__ data; int blkno; } ;
struct TYPE_12__ {int * xs_hitup; int indexRelation; int opaque; } ;
typedef int TIDBitmap ;
typedef TYPE_2__* IndexScanDesc ;
typedef int GistNSN ;
typedef TYPE_3__ GISTSearchItem ;
typedef TYPE_4__* GISTScanOpaque ;


 int CHECK_FOR_INTERRUPTS () ;
 int GIST_ROOT_BLKNO ;
 int MemoryContextReset (scalar_t__) ;
 TYPE_3__* getNextGISTSearchItem (TYPE_4__*) ;
 int gistScanPage (TYPE_2__*,TYPE_3__*,int *,int *,int *) ;
 int memset (int *,int ,int) ;
 int pfree (TYPE_3__*) ;
 int pgstat_count_index_scan (int ) ;

int64
gistgetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 GISTScanOpaque so = (GISTScanOpaque) scan->opaque;
 int64 ntids = 0;
 GISTSearchItem fakeItem;

 if (!so->qual_ok)
  return 0;

 pgstat_count_index_scan(scan->indexRelation);


 so->curPageData = so->nPageData = 0;
 scan->xs_hitup = ((void*)0);
 if (so->pageDataCxt)
  MemoryContextReset(so->pageDataCxt);

 fakeItem.blkno = GIST_ROOT_BLKNO;
 memset(&fakeItem.data.parentlsn, 0, sizeof(GistNSN));
 gistScanPage(scan, &fakeItem, ((void*)0), tbm, &ntids);





 for (;;)
 {
  GISTSearchItem *item = getNextGISTSearchItem(so);

  if (!item)
   break;

  CHECK_FOR_INTERRUPTS();

  gistScanPage(scan, item, item->distances, tbm, &ntids);

  pfree(item);
 }

 return ntids;
}
