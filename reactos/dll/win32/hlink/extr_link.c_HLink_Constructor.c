
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_4__ IBindStatusCallback_iface; TYPE_3__ IDataObject_iface; TYPE_2__ IPersistStream_iface; TYPE_1__ IHlink_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_5__ HlinkImpl ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,int *,int ) ;
 int bind_callback_vtbl ;
 int debugstr_guid (int ) ;
 int dovt ;
 TYPE_5__* heap_alloc_zero (int) ;
 int hlvt ;
 int psvt ;

HRESULT HLink_Constructor(IUnknown *pUnkOuter, REFIID riid, void **ppv)
{
    HlinkImpl * hl;

    TRACE("unkOut=%p riid=%s\n", pUnkOuter, debugstr_guid(riid));
    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    hl = heap_alloc_zero(sizeof(HlinkImpl));
    if (!hl)
        return E_OUTOFMEMORY;

    hl->ref = 1;
    hl->IHlink_iface.lpVtbl = &hlvt;
    hl->IPersistStream_iface.lpVtbl = &psvt;
    hl->IDataObject_iface.lpVtbl = &dovt;
    hl->IBindStatusCallback_iface.lpVtbl = &bind_callback_vtbl;

    *ppv = hl;
    return S_OK;
}
