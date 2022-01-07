
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int keyCtx; int tempCtx; } ;
struct TYPE_6__ {int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* GinScanOpaque ;


 int MemoryContextDelete (int ) ;
 int ginFreeScanKeys (TYPE_2__*) ;
 int pfree (TYPE_2__*) ;

void
ginendscan(IndexScanDesc scan)
{
 GinScanOpaque so = (GinScanOpaque) scan->opaque;

 ginFreeScanKeys(so);

 MemoryContextDelete(so->tempCtx);
 MemoryContextDelete(so->keyCtx);

 pfree(so);
}
