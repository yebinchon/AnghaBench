
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {int * lpVtbl; } ;
struct midi_port {int ref; TYPE_2__ IDirectMusicPort_iface; int clock; TYPE_1__ IDirectMusicThru_iface; } ;
typedef TYPE_2__ IDirectMusicPort ;
typedef int IDirectMusic8Impl ;
typedef scalar_t__ HRESULT ;
typedef int DMUS_PORTPARAMS ;
typedef int DMUS_PORTCAPS ;


 scalar_t__ DMUSIC_CreateReferenceClockImpl (int *,void**,int *) ;
 scalar_t__ E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct midi_port*) ;
 int IID_IReferenceClock ;
 scalar_t__ S_OK ;
 struct midi_port* heap_alloc_zero (int) ;
 int midi_port_vtbl ;
 int midi_thru_vtbl ;

__attribute__((used)) static HRESULT midi_port_create(IDirectMusic8Impl *parent, DMUS_PORTPARAMS *params,
        DMUS_PORTCAPS *caps, IDirectMusicPort **port)
{
    struct midi_port *obj;
    HRESULT hr;

    if (!(obj = heap_alloc_zero(sizeof(*obj))))
        return E_OUTOFMEMORY;

    obj->IDirectMusicPort_iface.lpVtbl = &midi_port_vtbl;
    obj->IDirectMusicThru_iface.lpVtbl = &midi_thru_vtbl;
    obj->ref = 1;

    hr = DMUSIC_CreateReferenceClockImpl(&IID_IReferenceClock, (void **)&obj->clock, ((void*)0));
    if (hr != S_OK) {
        HeapFree(GetProcessHeap(), 0, obj);
        return hr;
    }

    *port = &obj->IDirectMusicPort_iface;

    return S_OK;
}
