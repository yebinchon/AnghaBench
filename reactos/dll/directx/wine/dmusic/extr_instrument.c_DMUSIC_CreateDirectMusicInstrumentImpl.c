
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDirectMusicInstrument_iface; } ;
typedef int * LPVOID ;
typedef int LPUNKNOWN ;
typedef int LPCGUID ;
typedef TYPE_1__ IDirectMusicInstrumentImpl ;
typedef int HRESULT ;


 int DMUSIC_LockModule () ;
 int DirectMusicInstrument_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectMusicInstrument_QueryInterface (TYPE_2__*,int ,int **) ;
 int IDirectMusicInstrument_Release (TYPE_2__*) ;

HRESULT DMUSIC_CreateDirectMusicInstrumentImpl (LPCGUID lpcGUID, LPVOID* ppobj, LPUNKNOWN pUnkOuter) {
 IDirectMusicInstrumentImpl* dminst;
        HRESULT hr;

 dminst = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectMusicInstrumentImpl));
 if (((void*)0) == dminst) {
  *ppobj = ((void*)0);
  return E_OUTOFMEMORY;
 }
 dminst->IDirectMusicInstrument_iface.lpVtbl = &DirectMusicInstrument_Vtbl;
        dminst->ref = 1;

        DMUSIC_LockModule();
        hr = IDirectMusicInstrument_QueryInterface(&dminst->IDirectMusicInstrument_iface, lpcGUID,
                ppobj);
        IDirectMusicInstrument_Release(&dminst->IDirectMusicInstrument_iface);

        return hr;
}
