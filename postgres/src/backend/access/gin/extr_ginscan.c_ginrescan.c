
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numberOfKeys; int keyData; int opaque; } ;
typedef int ScanKeyData ;
typedef scalar_t__ ScanKey ;
typedef TYPE_1__* IndexScanDesc ;
typedef int GinScanOpaque ;


 int ginFreeScanKeys (int ) ;
 int memmove (int ,scalar_t__,int) ;

void
ginrescan(IndexScanDesc scan, ScanKey scankey, int nscankeys,
    ScanKey orderbys, int norderbys)
{
 GinScanOpaque so = (GinScanOpaque) scan->opaque;

 ginFreeScanKeys(so);

 if (scankey && scan->numberOfKeys > 0)
 {
  memmove(scan->keyData, scankey,
    scan->numberOfKeys * sizeof(ScanKeyData));
 }
}
