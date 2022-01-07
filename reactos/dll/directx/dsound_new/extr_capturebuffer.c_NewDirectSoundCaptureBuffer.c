
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int WAVEFORMATEX ;
typedef scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ cbSize; scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_16__ {int dwBufferBytes; TYPE_5__* lpwfxFormat; } ;
struct TYPE_13__ {scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_15__ {scalar_t__ BufferSize; int ref; int * lpVtbl; struct TYPE_15__* Format; void* bLoop; int State; TYPE_1__* Filter; scalar_t__ MixBufferSize; struct TYPE_15__* Buffer; int hPin; struct TYPE_15__* MixBuffer; TYPE_12__ MixFormat; void* bMix; } ;
struct TYPE_14__ {int hFilter; } ;
typedef TYPE_1__* LPFILTERINFO ;
typedef scalar_t__ LPDIRECTSOUNDCAPTUREBUFFER8 ;
typedef TYPE_2__* LPCDirectSoundCaptureBufferImpl ;
typedef TYPE_3__* LPCDSCBUFFERDESC ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef int CDirectSoundCaptureBufferImpl ;


 int ASSERT (int) ;
 int CloseHandle (int ) ;
 int CopyMemory (TYPE_12__*,int *,int) ;
 scalar_t__ CreateCompatiblePin (int ,scalar_t__,void*,TYPE_5__*,int *,int *) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,scalar_t__,scalar_t__) ;
 int DSERR_GENERIC ;
 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ GetPinIdFromFilter (TYPE_1__*,void*,scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 int KSSTATE_STOP ;
 scalar_t__ OpenPin (int ,scalar_t__,TYPE_5__*,int *,void*) ;
 int RtlMoveMemory (TYPE_2__*,TYPE_5__*,scalar_t__) ;
 void* TRUE ;
 scalar_t__ ULONG_MAX ;
 int vt_DirectSoundCaptureBuffer8 ;

HRESULT
NewDirectSoundCaptureBuffer(
    LPDIRECTSOUNDCAPTUREBUFFER8 *OutBuffer,
    LPFILTERINFO Filter,
    LPCDSCBUFFERDESC lpcDSBufferDesc)
{
    DWORD FormatSize, MixBufferSize;
    ULONG DeviceId = 0, PinId;
    DWORD Result = ERROR_SUCCESS;
    WAVEFORMATEX MixFormat;

    LPCDirectSoundCaptureBufferImpl This = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundCaptureBufferImpl));

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


    This->BufferSize = lpcDSBufferDesc->dwBufferBytes;
    ASSERT(lpcDSBufferDesc->lpwfxFormat->cbSize == 0);

    do
    {

        PinId = GetPinIdFromFilter(Filter, TRUE, DeviceId);

        if (PinId == ULONG_MAX)
            break;

        Result = OpenPin(Filter->hFilter, PinId, lpcDSBufferDesc->lpwfxFormat, &This->hPin, TRUE);
        if (Result == ERROR_SUCCESS)
            break;

        DeviceId++;
    }while(TRUE);

    if (Result != ERROR_SUCCESS)
    {





       DeviceId = 0;
       do
       {

            PinId = GetPinIdFromFilter(Filter, TRUE, DeviceId);
            DPRINT("PinId %u DeviceId %u\n", PinId, DeviceId);

            if (PinId == ULONG_MAX)
                break;

            if (CreateCompatiblePin(Filter->hFilter, PinId, TRUE, lpcDSBufferDesc->lpwfxFormat, &MixFormat, &This->hPin))
            {
                This->bMix = TRUE;
                CopyMemory(&This->MixFormat, &MixFormat, sizeof(WAVEFORMATEX));
                break;
            }

            DeviceId++;
        }while(TRUE);


        if (!This->bMix)
        {

            DPRINT("failed to compute a compatible format\n");
            HeapFree(GetProcessHeap(), 0, This->MixBuffer);
            HeapFree(GetProcessHeap(), 0, This->Buffer);
            HeapFree(GetProcessHeap(), 0, This->Format);
            HeapFree(GetProcessHeap(), 0, This);
            return DSERR_GENERIC;
        }

        MixBufferSize = lpcDSBufferDesc->dwBufferBytes;
        MixBufferSize /= lpcDSBufferDesc->lpwfxFormat->nChannels;
        MixBufferSize /= (lpcDSBufferDesc->lpwfxFormat->wBitsPerSample/8);

        MixBufferSize *= This->MixFormat.nChannels;
        MixBufferSize *= (This->MixFormat.wBitsPerSample/8);


        This->MixBuffer = HeapAlloc(GetProcessHeap(), 0, MixBufferSize);
        if (!This->Buffer)
        {

            CloseHandle(This->hPin);
            HeapFree(GetProcessHeap(), 0, This->Buffer);
            HeapFree(GetProcessHeap(), 0, This->Format);
            HeapFree(GetProcessHeap(), 0, This);
            return DSERR_OUTOFMEMORY;
        }
        This->MixBufferSize = MixBufferSize;
        DPRINT1("MixBufferSize %u BufferSize %u\n", MixBufferSize, This->BufferSize);
    }


    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundCaptureBuffer8;
    This->Filter = Filter;
    This->State = KSSTATE_STOP;
    This->bLoop = TRUE;

    RtlMoveMemory(This->Format, lpcDSBufferDesc->lpwfxFormat, FormatSize);

    *OutBuffer = (LPDIRECTSOUNDCAPTUREBUFFER8)&This->lpVtbl;
    return DS_OK;
}
