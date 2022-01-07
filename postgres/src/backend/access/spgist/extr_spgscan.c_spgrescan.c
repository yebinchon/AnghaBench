
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int numberOfKeys; int numberOfOrderBys; TYPE_3__* orderByData; TYPE_3__* keyData; int opaque; } ;
struct TYPE_12__ {int fn_oid; } ;
struct TYPE_14__ {TYPE_1__ sk_func; } ;
struct TYPE_13__ {int * orderByTypes; } ;
typedef TYPE_2__* SpGistScanOpaque ;
typedef int ScanKeyData ;
typedef TYPE_3__* ScanKey ;
typedef TYPE_4__* IndexScanDesc ;


 int get_func_rettype (int ) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;
 int resetSpGistScanOpaque (TYPE_2__*) ;
 int spgPrepareScanKeys (TYPE_4__*) ;

void
spgrescan(IndexScanDesc scan, ScanKey scankey, int nscankeys,
    ScanKey orderbys, int norderbys)
{
 SpGistScanOpaque so = (SpGistScanOpaque) scan->opaque;


 if (scankey && scan->numberOfKeys > 0)
  memmove(scan->keyData, scankey,
    scan->numberOfKeys * sizeof(ScanKeyData));


 if (orderbys && scan->numberOfOrderBys > 0)
 {
  int i;

  memmove(scan->orderByData, orderbys,
    scan->numberOfOrderBys * sizeof(ScanKeyData));

  for (i = 0; i < scan->numberOfOrderBys; i++)
  {
   ScanKey skey = &scan->orderByData[i];
   so->orderByTypes[i] = get_func_rettype(skey->sk_func.fn_oid);
  }
 }


 spgPrepareScanKeys(scan);


 resetSpGistScanOpaque(so);
}
