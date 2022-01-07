
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * sign; } ;
struct TYPE_4__ {int numberOfKeys; int keyData; int opaque; } ;
typedef int ScanKeyData ;
typedef scalar_t__ ScanKey ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* BloomScanOpaque ;


 int memmove (int ,scalar_t__,int) ;
 int pfree (int *) ;

void
blrescan(IndexScanDesc scan, ScanKey scankey, int nscankeys,
   ScanKey orderbys, int norderbys)
{
 BloomScanOpaque so = (BloomScanOpaque) scan->opaque;

 if (so->sign)
  pfree(so->sign);
 so->sign = ((void*)0);

 if (scankey && scan->numberOfKeys > 0)
 {
  memmove(scan->keyData, scankey,
    scan->numberOfKeys * sizeof(ScanKeyData));
 }
}
