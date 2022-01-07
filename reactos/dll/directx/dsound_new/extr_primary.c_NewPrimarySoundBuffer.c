
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WAVEFORMATEX ;
struct TYPE_4__ {int cbSize; int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int wFormatTag; } ;
struct TYPE_5__ {int ref; int * lpVtbl; int Lock; TYPE_1__ Format; int * hPin; int VolumePan; int Volume; scalar_t__ dwFrequency; void* dwFlags; void* dwLevel; int Filter; } ;
typedef int LPFILTERINFO ;
typedef scalar_t__ LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_2__* LPCDirectSoundBuffer ;
typedef int HRESULT ;
typedef void* DWORD ;
typedef int CDirectSoundBuffer ;


 int DSBPAN_CENTER ;
 int DSBVOLUME_MAX ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int InitializeCriticalSection (int *) ;
 int WAVE_FORMAT_PCM ;
 int vt_DirectSoundBuffer8 ;

HRESULT
NewPrimarySoundBuffer(
    LPDIRECTSOUNDBUFFER8 *OutBuffer,
    LPFILTERINFO Filter,
    DWORD dwLevel,
    DWORD dwFlags)
{
    LPCDirectSoundBuffer This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundBuffer));

    if (!This)
    {

        return DSERR_OUTOFMEMORY;
    }

    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundBuffer8;
    This->Filter = Filter;
    This->dwLevel = dwLevel;
    This->dwFlags = dwFlags;
    This->dwFrequency = 0;
    This->Volume = DSBVOLUME_MAX;
    This->VolumePan = DSBPAN_CENTER;
    This->hPin = ((void*)0);


    This->Format.cbSize = sizeof(WAVEFORMATEX);
    This->Format.nChannels = 2;
    This->Format.nSamplesPerSec = 44100;
    This->Format.wBitsPerSample = 16;
    This->Format.wFormatTag = WAVE_FORMAT_PCM;
    This->Format.nBlockAlign = (This->Format.nChannels * This->Format.wBitsPerSample) / 8;
    This->Format.nAvgBytesPerSec = (This->Format.nChannels * This->Format.nSamplesPerSec * This->Format.wBitsPerSample) / 8;

    InitializeCriticalSection(&This->Lock);

    *OutBuffer = (LPDIRECTSOUNDBUFFER8)&This->lpVtbl;
    return DS_OK;
}
