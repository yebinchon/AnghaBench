
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {int hFilter; } ;
struct TYPE_8__ {int * hPin; int dwFrequency; TYPE_6__* Filter; } ;
struct TYPE_7__ {int nSamplesPerSec; } ;
typedef TYPE_1__* LPWAVEFORMATEX ;
typedef int LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_2__* LPCDirectSoundBuffer ;
typedef int HRESULT ;
typedef int BOOL ;


 int CDirectSoundBuffer ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int DPRINT (char*,...) ;
 int DSERR_GENERIC ;
 int DSERR_INVALIDPARAM ;
 int DS_OK ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 scalar_t__ GetPinIdFromFilter (TYPE_6__*,int ,scalar_t__) ;
 scalar_t__ OpenPin (int ,scalar_t__,TYPE_1__*,int **,int ) ;
 scalar_t__ SetPinFormat (int *,TYPE_1__*) ;
 scalar_t__ TRUE ;
 scalar_t__ ULONG_MAX ;
 int lpVtbl ;

HRESULT
PrimaryDirectSoundBuffer_SetFormat(
    LPDIRECTSOUNDBUFFER8 iface,
    LPWAVEFORMATEX pcfxFormat,
    BOOL bLooped)
{
    ULONG PinId, DeviceId = 0, Result;
    LPCDirectSoundBuffer This = (LPCDirectSoundBuffer)CONTAINING_RECORD(iface, CDirectSoundBuffer, lpVtbl);

    if (This->hPin)
    {




        if (SetPinFormat(This->hPin, pcfxFormat))
            return DS_OK;
        else
            return DSERR_GENERIC;
    }

    do
    {

        PinId = GetPinIdFromFilter(This->Filter, FALSE, DeviceId);
        DPRINT("PinId %u DeviceId %u\n", PinId, DeviceId);

        if (PinId == ULONG_MAX)
            break;

        Result = OpenPin(This->Filter->hFilter, PinId, (LPWAVEFORMATEX)pcfxFormat, &This->hPin, bLooped);
        DPRINT("PinId %u Result %u\n", PinId, Result);
        if (Result == ERROR_SUCCESS)
        {
            This->dwFrequency = pcfxFormat->nSamplesPerSec;
            break;
        }

        This->hPin = ((void*)0);
        DeviceId++;
    }while(TRUE);

    if (!This->hPin)
    {
        DPRINT("PrimaryDirectSoundBuffer8Impl_fnSetFormat failed\n");
        return DSERR_INVALIDPARAM;
    }

    DPRINT("PrimaryDirectSoundBuffer8Impl_fnSetFormat success\n");
    return DS_OK;
}
