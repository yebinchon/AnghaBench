
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_3__ IUnknown_inner; TYPE_3__* outer; TYPE_2__ IInternetProtocolInfo_iface; TYPE_1__ IInternetProtocol_iface; } ;
typedef TYPE_3__ IUnknown ;
typedef TYPE_4__ ITSProtocol ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int ITSProtocolInfoVtbl ;
 int ITSProtocolUnkVtbl ;
 int ITSProtocolVtbl ;
 int ITSS_LockModule () ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,void**) ;

HRESULT ITSProtocol_create(IUnknown *outer, void **ppv)
{
    ITSProtocol *ret;

    TRACE("(%p %p)\n", outer, ppv);

    ITSS_LockModule();

    ret = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(ITSProtocol));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IUnknown_inner.lpVtbl = &ITSProtocolUnkVtbl;
    ret->IInternetProtocol_iface.lpVtbl = &ITSProtocolVtbl;
    ret->IInternetProtocolInfo_iface.lpVtbl = &ITSProtocolInfoVtbl;
    ret->ref = 1;
    ret->outer = outer ? outer : &ret->IUnknown_inner;

    *ppv = &ret->IUnknown_inner;
    return S_OK;
}
