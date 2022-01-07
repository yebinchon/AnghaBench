
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IITStorage_iface; } ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef TYPE_2__ ITStorageImpl ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int ITSS_LockModule () ;
 int ITStorageImpl_Vtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*) ;

__attribute__((used)) static HRESULT ITSS_create(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    ITStorageImpl *its;

    if( pUnkOuter )
        return CLASS_E_NOAGGREGATION;

    its = HeapAlloc( GetProcessHeap(), 0, sizeof(ITStorageImpl) );
    its->IITStorage_iface.lpVtbl = &ITStorageImpl_Vtbl;
    its->ref = 1;

    TRACE("-> %p\n", its);
    *ppObj = its;

    ITSS_LockModule();
    return S_OK;
}
