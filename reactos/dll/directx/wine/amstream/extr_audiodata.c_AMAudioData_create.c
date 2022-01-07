
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_7__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int wFormatTag; } ;
struct TYPE_9__ {int ref; TYPE_2__ IAudioData_iface; TYPE_1__ wave_format; } ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_3__ AMAudioDataImpl ;


 int AudioData_Vtbl ;
 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_3__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_2__**) ;
 int WAVE_FORMAT_PCM ;

HRESULT AMAudioData_create(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    AMAudioDataImpl *object;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(AMAudioDataImpl));
    if (!object)
        return E_OUTOFMEMORY;

    object->IAudioData_iface.lpVtbl = &AudioData_Vtbl;
    object->ref = 1;

    object->wave_format.wFormatTag = WAVE_FORMAT_PCM;
    object->wave_format.nChannels = 1;
    object->wave_format.nSamplesPerSec = 11025;
    object->wave_format.wBitsPerSample = 16;
    object->wave_format.nBlockAlign = object->wave_format.wBitsPerSample * object->wave_format.nChannels / 8;
    object->wave_format.nAvgBytesPerSec = object->wave_format.nBlockAlign * object->wave_format.nSamplesPerSec;

    *ppObj = &object->IAudioData_iface;

    return S_OK;
}
