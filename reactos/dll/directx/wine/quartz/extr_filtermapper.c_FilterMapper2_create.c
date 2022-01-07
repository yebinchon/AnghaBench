
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_14__ {int ref; TYPE_4__ IUnknown_inner; TYPE_4__* outer_unk; TYPE_3__ IAMFilterData_iface; TYPE_2__ IFilterMapper_iface; TYPE_1__ IFilterMapper3_iface; } ;
typedef TYPE_4__* LPVOID ;
typedef TYPE_4__ IUnknown ;
typedef int HRESULT ;
typedef TYPE_6__ FilterMapper3Impl ;


 int AMFilterDataVtbl ;
 TYPE_6__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int IInner_VTable ;
 int S_OK ;
 int TRACE (char*,...) ;
 int fm3vtbl ;
 int fmvtbl ;

HRESULT FilterMapper2_create(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    FilterMapper3Impl * pFM2impl;

    TRACE("(%p, %p)\n", pUnkOuter, ppObj);

    pFM2impl = CoTaskMemAlloc(sizeof(*pFM2impl));
    if (!pFM2impl)
        return E_OUTOFMEMORY;

    pFM2impl->IUnknown_inner.lpVtbl = &IInner_VTable;
    pFM2impl->IFilterMapper3_iface.lpVtbl = &fm3vtbl;
    pFM2impl->IFilterMapper_iface.lpVtbl = &fmvtbl;
    pFM2impl->IAMFilterData_iface.lpVtbl = &AMFilterDataVtbl;
    pFM2impl->ref = 1;

    if (pUnkOuter)
        pFM2impl->outer_unk = pUnkOuter;
    else
        pFM2impl->outer_unk = &pFM2impl->IUnknown_inner;

    *ppObj = &pFM2impl->IUnknown_inner;

    TRACE("-- created at %p\n", pFM2impl);

    return S_OK;
}
