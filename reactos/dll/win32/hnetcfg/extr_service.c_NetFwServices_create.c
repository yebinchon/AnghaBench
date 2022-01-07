
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_2__ INetFwServices_iface; } ;
typedef TYPE_1__ fw_services ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,...) ;
 int fw_services_vtbl ;

HRESULT NetFwServices_create( IUnknown *pUnkOuter, LPVOID *ppObj )
{
    fw_services *fp;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    fp = HeapAlloc( GetProcessHeap(), 0, sizeof(*fp) );
    if (!fp) return E_OUTOFMEMORY;

    fp->INetFwServices_iface.lpVtbl = &fw_services_vtbl;
    fp->refs = 1;

    *ppObj = &fp->INetFwServices_iface;

    TRACE("returning iface %p\n", *ppObj);
    return S_OK;
}
