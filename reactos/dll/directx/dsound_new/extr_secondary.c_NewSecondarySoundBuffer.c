
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int WAVEFORMATEX ;
typedef int ULONG ;
struct TYPE_9__ {int cbSize; int wBitsPerSample; int nSamplesPerSec; } ;
struct TYPE_8__ {int dwBufferBytes; TYPE_6__* lpwfxFormat; int dwFlags; } ;
struct TYPE_7__ {int ref; int BufferSize; int * lpVtbl; struct TYPE_7__* Format; scalar_t__ PrimaryBuffer; scalar_t__ Position; scalar_t__ Flags; int VolumePan; int Volume; int State; int dwFrequency; int dwFlags; int dwLevel; int Filter; void* Buffer; } ;
typedef int LPFILTERINFO ;
typedef scalar_t__ LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_1__* LPCDirectSoundBuffer ;
typedef TYPE_2__* LPCDSBUFFERDESC ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int CDirectSoundBuffer ;


 int ASSERT (int) ;
 int CopyMemory (TYPE_1__*,TYPE_6__*,int) ;
 int DSBPAN_CENTER ;
 int DSBVOLUME_MAX ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int FillMemory (void*,int,int) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int KSSTATE_STOP ;
 int vt_DirectSoundBuffer8 ;

HRESULT
NewSecondarySoundBuffer(
    LPDIRECTSOUNDBUFFER8 *OutBuffer,
    LPFILTERINFO Filter,
    DWORD dwLevel,
    LPCDSBUFFERDESC lpcDSBufferDesc,
    LPDIRECTSOUNDBUFFER8 PrimaryBuffer)
{
    ULONG FormatSize;
    LPCDirectSoundBuffer This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundBuffer));

    if (!This)
    {

        return DSERR_OUTOFMEMORY;
    }

    FormatSize = sizeof(WAVEFORMATEX) + lpcDSBufferDesc->lpwfxFormat->cbSize;

    This->Format = HeapAlloc(GetProcessHeap(), 0, FormatSize);
    if (!This->Format)
    {

        HeapFree(GetProcessHeap(), 0, This);
        return DSERR_OUTOFMEMORY;
    }


    ASSERT(lpcDSBufferDesc->dwBufferBytes);


    This->Buffer = HeapAlloc(GetProcessHeap(), 0, lpcDSBufferDesc->dwBufferBytes);
    if (!This->Buffer)
    {

        HeapFree(GetProcessHeap(), 0, This->Format);
        HeapFree(GetProcessHeap(), 0, This);
        return DSERR_OUTOFMEMORY;
    }


    FillMemory(This->Buffer, lpcDSBufferDesc->dwBufferBytes, lpcDSBufferDesc->lpwfxFormat->wBitsPerSample == 8 ? 0x80 : 0);

    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundBuffer8;
    This->Filter = Filter;
    This->dwLevel = dwLevel;
    This->dwFlags = lpcDSBufferDesc->dwFlags;
    This->dwFrequency = lpcDSBufferDesc->lpwfxFormat->nSamplesPerSec;
    This->State = KSSTATE_STOP;
    This->Volume = DSBVOLUME_MAX;
    This->VolumePan = DSBPAN_CENTER;
    This->Flags = 0;
    This->Position = 0;
    This->BufferSize = lpcDSBufferDesc->dwBufferBytes;
    This->PrimaryBuffer = PrimaryBuffer;

    CopyMemory(This->Format, lpcDSBufferDesc->lpwfxFormat, FormatSize);

    *OutBuffer = (LPDIRECTSOUNDBUFFER8)&This->lpVtbl;
    return DS_OK;
}
