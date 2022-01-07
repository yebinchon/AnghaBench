
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; int num_streams; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; scalar_t__ cur_stream; int * cur_pin; int * splitter; int * source; int * graph; TYPE_1__ IMediaDet_iface; } ;
typedef TYPE_2__ MediaDetImpl ;
typedef TYPE_3__* LPVOID ;
typedef TYPE_3__ IUnknown ;
typedef int HRESULT ;


 TYPE_2__* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int IMediaDet_VTable ;
 int S_OK ;
 int TRACE (char*,TYPE_3__*,TYPE_3__**) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int mediadet_vtbl ;

HRESULT MediaDet_create(IUnknown * pUnkOuter, LPVOID * ppv) {
    MediaDetImpl* obj = ((void*)0);

    TRACE("(%p,%p)\n", pUnkOuter, ppv);

    obj = CoTaskMemAlloc(sizeof(MediaDetImpl));
    if (((void*)0) == obj) {
        *ppv = ((void*)0);
        return E_OUTOFMEMORY;
    }
    ZeroMemory(obj, sizeof(MediaDetImpl));

    obj->ref = 1;
    obj->IUnknown_inner.lpVtbl = &mediadet_vtbl;
    obj->IMediaDet_iface.lpVtbl = &IMediaDet_VTable;
    obj->graph = ((void*)0);
    obj->source = ((void*)0);
    obj->splitter = ((void*)0);
    obj->cur_pin = ((void*)0);
    obj->num_streams = -1;
    obj->cur_stream = 0;

    if (pUnkOuter)
        obj->outer_unk = pUnkOuter;
    else
        obj->outer_unk = &obj->IUnknown_inner;

    *ppv = &obj->IUnknown_inner;
    return S_OK;
}
