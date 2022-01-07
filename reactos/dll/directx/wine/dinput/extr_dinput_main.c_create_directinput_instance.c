
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_14__ {TYPE_7__ IDirectInput7A_iface; TYPE_4__ IDirectInputJoyConfig8_iface; TYPE_3__ IDirectInput8W_iface; TYPE_2__ IDirectInput8A_iface; TYPE_1__ IDirectInput7W_iface; } ;
typedef int REFIID ;
typedef int LPVOID ;
typedef TYPE_5__ IDirectInputImpl ;
typedef int HRESULT ;


 int DI_OK ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int IDirectInput_QueryInterface (TYPE_7__*,int ,int *) ;
 int JoyConfig8vt ;
 int ddi7avt ;
 int ddi7wvt ;
 int ddi8avt ;
 int ddi8wvt ;

__attribute__((used)) static HRESULT create_directinput_instance(REFIID riid, LPVOID *ppDI, IDirectInputImpl **out)
{
    IDirectInputImpl *This = HeapAlloc( GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectInputImpl) );
    HRESULT hr;

    if (!This)
        return E_OUTOFMEMORY;

    This->IDirectInput7A_iface.lpVtbl = &ddi7avt;
    This->IDirectInput7W_iface.lpVtbl = &ddi7wvt;
    This->IDirectInput8A_iface.lpVtbl = &ddi8avt;
    This->IDirectInput8W_iface.lpVtbl = &ddi8wvt;
    This->IDirectInputJoyConfig8_iface.lpVtbl = &JoyConfig8vt;

    hr = IDirectInput_QueryInterface( &This->IDirectInput7A_iface, riid, ppDI );
    if (FAILED(hr))
    {
        HeapFree( GetProcessHeap(), 0, This );
        return hr;
    }

    if (out) *out = This;
    return DI_OK;
}
