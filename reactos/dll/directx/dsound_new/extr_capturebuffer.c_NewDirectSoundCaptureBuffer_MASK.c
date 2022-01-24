#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
typedef  scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ cbSize; scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_16__ {int dwBufferBytes; TYPE_5__* lpwfxFormat; } ;
struct TYPE_13__ {scalar_t__ nChannels; int wBitsPerSample; } ;
struct TYPE_15__ {scalar_t__ BufferSize; int ref; int /*<<< orphan*/ * lpVtbl; struct TYPE_15__* Format; void* bLoop; int /*<<< orphan*/  State; TYPE_1__* Filter; scalar_t__ MixBufferSize; struct TYPE_15__* Buffer; int /*<<< orphan*/  hPin; struct TYPE_15__* MixBuffer; TYPE_12__ MixFormat; void* bMix; } ;
struct TYPE_14__ {int /*<<< orphan*/  hFilter; } ;
typedef  TYPE_1__* LPFILTERINFO ;
typedef  scalar_t__ LPDIRECTSOUNDCAPTUREBUFFER8 ;
typedef  TYPE_2__* LPCDirectSoundCaptureBufferImpl ;
typedef  TYPE_3__* LPCDSCBUFFERDESC ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CDirectSoundCaptureBufferImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,void*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  DSERR_GENERIC ; 
 int /*<<< orphan*/  DSERR_OUTOFMEMORY ; 
 int /*<<< orphan*/  DS_OK ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC6 (TYPE_1__*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  KSSTATE_STOP ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,TYPE_5__*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_5__*,scalar_t__) ; 
 void* TRUE ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  vt_DirectSoundCaptureBuffer8 ; 

HRESULT
FUNC12(
    LPDIRECTSOUNDCAPTUREBUFFER8 *OutBuffer,
    LPFILTERINFO Filter,
    LPCDSCBUFFERDESC lpcDSBufferDesc)
{
    DWORD FormatSize, MixBufferSize;
    ULONG DeviceId = 0, PinId;
    DWORD Result = ERROR_SUCCESS;
    WAVEFORMATEX MixFormat;

    LPCDirectSoundCaptureBufferImpl This = FUNC8(FUNC7(), HEAP_ZERO_MEMORY, sizeof(CDirectSoundCaptureBufferImpl));

    if (!This)
    {
        /* not enough memory */
        return DSERR_OUTOFMEMORY;
    }

     /* calculate format size */
    FormatSize = sizeof(WAVEFORMATEX) + lpcDSBufferDesc->lpwfxFormat->cbSize;
    /* allocate format struct */
    This->Format = FUNC8(FUNC7(), 0, FormatSize);
    if (!This->Format)
    {
        /* not enough memory */
        FUNC9(FUNC7(), 0, This);
        return DSERR_OUTOFMEMORY;
    }

    /* sanity check */
    FUNC0(lpcDSBufferDesc->dwBufferBytes);

    /* allocate capture buffer */
    This->Buffer = FUNC8(FUNC7(), 0, lpcDSBufferDesc->dwBufferBytes);
    if (!This->Buffer)
    {
        /* not enough memory */
        FUNC9(FUNC7(), 0, This->Format);
        FUNC9(FUNC7(), 0, This);
        return DSERR_OUTOFMEMORY;
    }

    /* store buffer size */
    This->BufferSize = lpcDSBufferDesc->dwBufferBytes;
    FUNC0(lpcDSBufferDesc->lpwfxFormat->cbSize == 0);

    do
    {
        /* try all available recording pins on that filter */
        PinId = FUNC6(Filter, TRUE, DeviceId);

        if (PinId == ULONG_MAX)
            break;

        Result = FUNC10(Filter->hFilter, PinId, lpcDSBufferDesc->lpwfxFormat, &This->hPin, TRUE);
        if (Result == ERROR_SUCCESS)
            break;

        DeviceId++;
    }while(TRUE);

    if (Result != ERROR_SUCCESS)
    {
        /* failed to instantiate the capture pin with the native format
         * try to compute a compatible format and use that
         * we could use the mixer api for this purpose but... the kmixer isnt working very good atm
         */

       DeviceId = 0;
       do
       {
           /* try all available recording pins on that filter */
            PinId = FUNC6(Filter, TRUE, DeviceId);
            FUNC4("PinId %u DeviceId %u\n", PinId, DeviceId);

            if (PinId == ULONG_MAX)
                break;

            if (FUNC3(Filter->hFilter, PinId, TRUE, lpcDSBufferDesc->lpwfxFormat, &MixFormat, &This->hPin))
            {
                This->bMix = TRUE;
                FUNC2(&This->MixFormat, &MixFormat, sizeof(WAVEFORMATEX));
                break;
            }

            DeviceId++;
        }while(TRUE);


        if (!This->bMix)
        {
            /* FIXME should not happen */
            FUNC4("failed to compute a compatible format\n");
            FUNC9(FUNC7(), 0, This->MixBuffer);
            FUNC9(FUNC7(), 0, This->Buffer);
            FUNC9(FUNC7(), 0, This->Format);
            FUNC9(FUNC7(), 0, This);
            return DSERR_GENERIC;
        }

        MixBufferSize = lpcDSBufferDesc->dwBufferBytes;
        MixBufferSize /= lpcDSBufferDesc->lpwfxFormat->nChannels;
        MixBufferSize /= (lpcDSBufferDesc->lpwfxFormat->wBitsPerSample/8);

        MixBufferSize *= This->MixFormat.nChannels;
        MixBufferSize *= (This->MixFormat.wBitsPerSample/8);

        /* allocate buffer for mixing */
        This->MixBuffer = FUNC8(FUNC7(), 0, MixBufferSize);
        if (!This->Buffer)
        {
            /* not enough memory */
            FUNC1(This->hPin);
            FUNC9(FUNC7(), 0, This->Buffer);
            FUNC9(FUNC7(), 0, This->Format);
            FUNC9(FUNC7(), 0, This);
            return DSERR_OUTOFMEMORY;
        }
        This->MixBufferSize = MixBufferSize;
        FUNC5("MixBufferSize %u BufferSize %u\n", MixBufferSize, This->BufferSize);
    }

    /* initialize capture buffer */
    This->ref = 1;
    This->lpVtbl = &vt_DirectSoundCaptureBuffer8;
    This->Filter = Filter;
    This->State = KSSTATE_STOP;
    This->bLoop = TRUE;

    FUNC11(This->Format, lpcDSBufferDesc->lpwfxFormat, FormatSize);

    *OutBuffer = (LPDIRECTSOUNDCAPTUREBUFFER8)&This->lpVtbl;
    return DS_OK;
}