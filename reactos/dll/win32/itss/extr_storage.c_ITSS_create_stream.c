
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct chmUnitInfo {int dummy; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_2__* stg; struct chmUnitInfo ui; scalar_t__ addr; TYPE_1__ IStream_iface; } ;
struct TYPE_9__ {int IStorage_iface; } ;
typedef TYPE_2__ ITSS_IStorageImpl ;
typedef TYPE_3__ IStream_Impl ;


 int GetProcessHeap () ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int IStorage_AddRef (int *) ;
 int ITSS_IStream_vtbl ;
 int ITSS_LockModule () ;
 int TRACE (char*,TYPE_3__*) ;

__attribute__((used)) static IStream_Impl *ITSS_create_stream(
           ITSS_IStorageImpl *stg, struct chmUnitInfo *ui )
{
    IStream_Impl *stm;

    stm = HeapAlloc( GetProcessHeap(), 0, sizeof (IStream_Impl) );
    stm->IStream_iface.lpVtbl = &ITSS_IStream_vtbl;
    stm->ref = 1;
    stm->addr = 0;
    stm->ui = *ui;
    stm->stg = stg;
    IStorage_AddRef( &stg->IStorage_iface );

    ITSS_LockModule();

    TRACE(" -> %p\n", stm );

    return stm;
}
