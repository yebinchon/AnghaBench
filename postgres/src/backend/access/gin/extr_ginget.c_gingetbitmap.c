
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_8__ {int opaque; } ;
typedef int TIDBitmap ;
typedef int ItemPointerData ;
typedef TYPE_1__* IndexScanDesc ;
typedef int GinScanOpaque ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GinIsVoidRes (TYPE_1__*) ;
 int ItemPointerGetBlockNumber (int *) ;
 scalar_t__ ItemPointerIsLossyPage (int *) ;
 int ItemPointerSetMin (int *) ;
 int ginFreeScanKeys (int ) ;
 int ginNewScanKey (TYPE_1__*) ;
 int scanGetItem (TYPE_1__*,int ,int *,int*) ;
 int scanPendingInsert (TYPE_1__*,int *,scalar_t__*) ;
 int startScan (TYPE_1__*) ;
 int tbm_add_page (int *,int ) ;
 int tbm_add_tuples (int *,int *,int,int) ;

int64
gingetbitmap(IndexScanDesc scan, TIDBitmap *tbm)
{
 GinScanOpaque so = (GinScanOpaque) scan->opaque;
 int64 ntids;
 ItemPointerData iptr;
 bool recheck;




 ginFreeScanKeys(so);

 ginNewScanKey(scan);

 if (GinIsVoidRes(scan))
  return 0;

 ntids = 0;
 scanPendingInsert(scan, tbm, &ntids);




 startScan(scan);

 ItemPointerSetMin(&iptr);

 for (;;)
 {
  CHECK_FOR_INTERRUPTS();

  if (!scanGetItem(scan, iptr, &iptr, &recheck))
   break;

  if (ItemPointerIsLossyPage(&iptr))
   tbm_add_page(tbm, ItemPointerGetBlockNumber(&iptr));
  else
   tbm_add_tuples(tbm, &iptr, 1, recheck);
  ntids++;
 }

 return ntids;
}
