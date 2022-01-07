
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; TYPE_1__ IAMTimeline_iface; } ;
typedef TYPE_2__ TimelineImpl ;
typedef TYPE_3__* LPVOID ;
typedef TYPE_3__ IUnknown ;
typedef int HRESULT ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int IAMTimeline_VTable ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,TYPE_3__**) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int timeline_vtbl ;

HRESULT AMTimeline_create(IUnknown *pUnkOuter, LPVOID *ppv)
{
    TimelineImpl* obj = ((void*)0);

    TRACE("(%p,%p)\n", pUnkOuter, ppv);

    obj = CoTaskMemAlloc(sizeof(TimelineImpl));
    if (((void*)0) == obj) {
        *ppv = ((void*)0);
        return E_OUTOFMEMORY;
    }
    ZeroMemory(obj, sizeof(TimelineImpl));

    obj->ref = 1;
    obj->IUnknown_inner.lpVtbl = &timeline_vtbl;
    obj->IAMTimeline_iface.lpVtbl = &IAMTimeline_VTable;

    if (pUnkOuter)
        obj->outer_unk = pUnkOuter;
    else
        obj->outer_unk = &obj->IUnknown_inner;

    *ppv = &obj->IUnknown_inner;
    return S_OK;
}
