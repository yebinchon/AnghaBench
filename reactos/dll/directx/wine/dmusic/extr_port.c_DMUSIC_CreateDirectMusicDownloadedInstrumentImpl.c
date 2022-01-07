
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDirectMusicDownloadedInstrument_iface; } ;
typedef TYPE_1__ IDirectMusicDownloadedInstrumentImpl ;
typedef TYPE_2__ IDirectMusicDownloadedInstrument ;
typedef int HRESULT ;


 int DMUSIC_LockModule () ;
 int DirectMusicDownloadedInstrument_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;

__attribute__((used)) static HRESULT DMUSIC_CreateDirectMusicDownloadedInstrumentImpl(IDirectMusicDownloadedInstrument **instrument)
{
    IDirectMusicDownloadedInstrumentImpl *object;

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*object));
    if (!object)
    {
        *instrument = ((void*)0);
        return E_OUTOFMEMORY;
    }

    object->IDirectMusicDownloadedInstrument_iface.lpVtbl = &DirectMusicDownloadedInstrument_Vtbl;
    object->ref = 1;

    *instrument = &object->IDirectMusicDownloadedInstrument_iface;
    DMUSIC_LockModule();

    return S_OK;
}
