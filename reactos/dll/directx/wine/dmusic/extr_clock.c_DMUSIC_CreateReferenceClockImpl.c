
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int dwSize; } ;
struct TYPE_7__ {int ref; TYPE_3__ IReferenceClock_iface; TYPE_1__ pClockInfo; scalar_t__ rtTime; } ;
typedef int * LPVOID ;
typedef int LPUNKNOWN ;
typedef int LPCGUID ;
typedef TYPE_2__ IReferenceClockImpl ;
typedef int HRESULT ;
typedef int DMUS_CLOCKINFO ;


 int DMUSIC_LockModule () ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IReferenceClockImpl_QueryInterface (TYPE_3__*,int ,int **) ;
 int IReferenceClock_Release (TYPE_3__*) ;
 int ReferenceClock_Vtbl ;
 int TRACE (char*,int ,int **,int ) ;
 int debugstr_guid (int ) ;

HRESULT DMUSIC_CreateReferenceClockImpl(LPCGUID riid, LPVOID* ret_iface, LPUNKNOWN unkouter)
{
    IReferenceClockImpl* clock;
    HRESULT hr;

    TRACE("(%s, %p, %p)\n", debugstr_guid(riid), ret_iface, unkouter);

    clock = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IReferenceClockImpl));
    if (!clock) {
        *ret_iface = ((void*)0);
        return E_OUTOFMEMORY;
    }

    clock->IReferenceClock_iface.lpVtbl = &ReferenceClock_Vtbl;
    clock->ref = 1;
    clock->rtTime = 0;
    clock->pClockInfo.dwSize = sizeof (DMUS_CLOCKINFO);

    DMUSIC_LockModule();
    hr = IReferenceClockImpl_QueryInterface(&clock->IReferenceClock_iface, riid, ret_iface);
    IReferenceClock_Release(&clock->IReferenceClock_iface);

    return hr;
}
