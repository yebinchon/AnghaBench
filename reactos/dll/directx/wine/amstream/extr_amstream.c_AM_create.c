
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IAMMultiMediaStream_iface; } ;
typedef TYPE_1__* LPVOID ;
typedef int IUnknown ;
typedef TYPE_2__ IAMMultiMediaStreamImpl ;
typedef int HRESULT ;


 int AM_Vtbl ;
 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_1__**) ;

HRESULT AM_create(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    IAMMultiMediaStreamImpl* object;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    if( pUnkOuter )
        return CLASS_E_NOAGGREGATION;

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IAMMultiMediaStreamImpl));
    if (!object)
        return E_OUTOFMEMORY;

    object->IAMMultiMediaStream_iface.lpVtbl = &AM_Vtbl;
    object->ref = 1;

    *ppObj = &object->IAMMultiMediaStream_iface;

    return S_OK;
}
