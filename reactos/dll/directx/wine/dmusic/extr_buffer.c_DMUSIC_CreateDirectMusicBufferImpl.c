
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; int size; TYPE_1__ IDirectMusicBuffer_iface; void* data; int format; } ;
struct TYPE_10__ {int cbBuffer; int guidBufferFormat; } ;
typedef TYPE_1__* LPVOID ;
typedef TYPE_2__* LPDMUS_BUFFERDESC ;
typedef TYPE_3__ IDirectMusicBufferImpl ;
typedef int HRESULT ;


 int DMUSIC_LockModule () ;
 int DirectMusicBuffer_Vtbl ;
 int E_OUTOFMEMORY ;
 int GUID_NULL ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int KSDATAFORMAT_SUBTYPE_MIDI ;
 int S_OK ;
 int TRACE (char*,TYPE_2__*,TYPE_1__**) ;

HRESULT DMUSIC_CreateDirectMusicBufferImpl(LPDMUS_BUFFERDESC desc, LPVOID* ret_iface)
{
    IDirectMusicBufferImpl* dmbuffer;

    TRACE("(%p, %p)\n", desc, ret_iface);

    *ret_iface = ((void*)0);

    dmbuffer = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectMusicBufferImpl));
    if (!dmbuffer)
        return E_OUTOFMEMORY;

    dmbuffer->IDirectMusicBuffer_iface.lpVtbl = &DirectMusicBuffer_Vtbl;
    dmbuffer->ref = 1;

    if (IsEqualGUID(&desc->guidBufferFormat, &GUID_NULL))
        dmbuffer->format = KSDATAFORMAT_SUBTYPE_MIDI;
    else
        dmbuffer->format = desc->guidBufferFormat;
    dmbuffer->size = (desc->cbBuffer + 3) & ~3;

    dmbuffer->data = HeapAlloc(GetProcessHeap(), 0, dmbuffer->size);
    if (!dmbuffer->data) {
        HeapFree(GetProcessHeap(), 0, dmbuffer);
        return E_OUTOFMEMORY;
    }

    DMUSIC_LockModule();
    *ret_iface = &dmbuffer->IDirectMusicBuffer_iface;

    return S_OK;
}
