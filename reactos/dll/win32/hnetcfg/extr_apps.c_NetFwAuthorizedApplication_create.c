
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_2__ INetFwAuthorizedApplication_iface; int * filename; } ;
typedef TYPE_1__ fw_app ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,...) ;
 int fw_app_vtbl ;

HRESULT NetFwAuthorizedApplication_create( IUnknown *pUnkOuter, LPVOID *ppObj )
{
    fw_app *fa;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    fa = HeapAlloc( GetProcessHeap(), 0, sizeof(*fa) );
    if (!fa) return E_OUTOFMEMORY;

    fa->INetFwAuthorizedApplication_iface.lpVtbl = &fw_app_vtbl;
    fa->refs = 1;
    fa->filename = ((void*)0);

    *ppObj = &fa->INetFwAuthorizedApplication_iface;

    TRACE("returning iface %p\n", *ppObj);
    return S_OK;
}
