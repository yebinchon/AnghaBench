
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; int * current; int links; TYPE_1__ IHlinkBrowseContext_iface; } ;
typedef int REFIID ;
typedef int IUnknown ;
typedef TYPE_2__ HlinkBCImpl ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 int TRACE (char*,int *,int ) ;
 int debugstr_guid (int ) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int hlvt ;
 int list_init (int *) ;

HRESULT HLinkBrowseContext_Constructor(IUnknown *pUnkOuter, REFIID riid, void **ppv)
{
    HlinkBCImpl * hl;

    TRACE("unkOut=%p riid=%s\n", pUnkOuter, debugstr_guid(riid));
    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    hl = heap_alloc_zero(sizeof(HlinkBCImpl));
    if (!hl)
        return E_OUTOFMEMORY;

    hl->ref = 1;
    hl->IHlinkBrowseContext_iface.lpVtbl = &hlvt;
    list_init(&hl->links);
    hl->current = ((void*)0);

    *ppv = hl;
    return S_OK;
}
