
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; int * current; int * last; int * first; TYPE_1__ IEnumSTATSTG_iface; } ;
typedef TYPE_2__ IEnumSTATSTG_Impl ;


 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IEnumSTATSTG_vtbl ;
 int ITSS_LockModule () ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static IEnumSTATSTG_Impl *ITSS_create_enum( void )
{
    IEnumSTATSTG_Impl *stgenum;

    stgenum = HeapAlloc( GetProcessHeap(), 0, sizeof (IEnumSTATSTG_Impl) );
    stgenum->IEnumSTATSTG_iface.lpVtbl = &IEnumSTATSTG_vtbl;
    stgenum->ref = 1;
    stgenum->first = ((void*)0);
    stgenum->last = ((void*)0);
    stgenum->current = ((void*)0);

    ITSS_LockModule();
    TRACE(" -> %p\n", stgenum );

    return stgenum;
}
