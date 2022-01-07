
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IUPnPNAT_iface; } ;
typedef TYPE_2__ upnpnat ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,void*,...) ;
 TYPE_2__* heap_alloc (int) ;
 int upnpnat_vtbl ;

HRESULT IUPnPNAT_create(IUnknown *outer, void **object)
{
    upnpnat *nat;

    TRACE("(%p,%p)\n", outer, object);

    nat = heap_alloc( sizeof(*nat) );
    if (!nat) return E_OUTOFMEMORY;

    nat->IUPnPNAT_iface.lpVtbl = &upnpnat_vtbl;
    nat->ref = 1;

    *object = &nat->IUPnPNAT_iface;

    TRACE("returning iface %p\n", *object);
    return S_OK;
}
