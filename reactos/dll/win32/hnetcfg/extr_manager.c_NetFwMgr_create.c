
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_2__ INetFwMgr_iface; } ;
typedef TYPE_1__ fw_manager ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,...) ;
 int fw_manager_vtbl ;

HRESULT NetFwMgr_create( IUnknown *pUnkOuter, LPVOID *ppObj )
{
    fw_manager *fm;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    fm = HeapAlloc( GetProcessHeap(), 0, sizeof(*fm) );
    if (!fm) return E_OUTOFMEMORY;

    fm->INetFwMgr_iface.lpVtbl = &fw_manager_vtbl;
    fm->refs = 1;

    *ppObj = &fm->INetFwMgr_iface;

    TRACE("returning iface %p\n", *ppObj);
    return S_OK;
}
