
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* szPname; } ;
typedef TYPE_1__ WAVEOUTCAPSW ;
typedef TYPE_1__ WAVEINCAPSW ;
typedef int ULONG ;
typedef int UINT_PTR ;
struct TYPE_10__ {scalar_t__* MappedId; struct TYPE_10__* lpNext; int * DeviceGuid; } ;
typedef int LPVOID ;
typedef TYPE_3__* LPFILTERINFO ;
typedef int * LPDSENUMCALLBACKW ;
typedef int * LPDSENUMCALLBACKA ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int ASSERT (int) ;
 int DPRINT (char*) ;
 int DSERR_INVALIDPARAM ;
 int DS_OK ;
 scalar_t__ DoDSoundCallback (int *,int *,int *,int ,int*,char*,int ) ;
 int EnumAudioDeviceInterfaces (TYPE_3__**) ;
 int GUID_NULL ;
 int IDS_PRIMARY_PLAYBACK_DEVICE ;
 int IDS_PRIMARY_RECORD_DEVICE ;
 int IsEqualGUID (int *,int *) ;
 int MAXPNAMELEN ;
 TYPE_3__* RootInfo ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 scalar_t__ ULONG_MAX ;
 int waveInGetDevCapsW (int ,TYPE_1__*,int) ;
 int waveOutGetDevCapsW (int ,TYPE_1__*,int) ;

HRESULT
DSoundEnumerate(
    LPDSENUMCALLBACKA lpDSEnumCallbackA,
    LPDSENUMCALLBACKW lpDSEnumCallbackW,
    LPVOID lpContext,
    BOOL bPlayback)
{
    ULONG ResourceId;
    BOOL bResult;
    LPFILTERINFO CurInfo;
    WAVEOUTCAPSW WaveOutCaps;
    WAVEINCAPSW WaveInCaps;

    if (!RootInfo)
    {
        EnumAudioDeviceInterfaces(&RootInfo);
    }

    if (lpDSEnumCallbackA == ((void*)0) && lpDSEnumCallbackW == ((void*)0))
    {
        DPRINT("No callback\n");
        return DSERR_INVALIDPARAM;
    }

    if (bPlayback)
    {

        ResourceId = IDS_PRIMARY_PLAYBACK_DEVICE;
    }
    else
    {

        ResourceId = IDS_PRIMARY_RECORD_DEVICE;
    }

    if (RootInfo)
    {

        bResult = DoDSoundCallback(lpDSEnumCallbackA, lpDSEnumCallbackW, ((void*)0), ResourceId, ((void*)0), L"", lpContext);
        if (!bResult)
        {

            return DS_OK;
        }


        CurInfo = RootInfo;

        do
        {
            if (bPlayback && !IsEqualGUID(&CurInfo->DeviceGuid[1], &GUID_NULL))
            {
                RtlZeroMemory(&WaveOutCaps, sizeof(WAVEOUTCAPSW));


                ASSERT(CurInfo->MappedId[1] != ULONG_MAX);


                waveOutGetDevCapsW((UINT_PTR)CurInfo->MappedId[1], &WaveOutCaps, sizeof(WAVEOUTCAPSW));
                WaveOutCaps.szPname[MAXPNAMELEN-1] = L'\0';

                bResult = DoDSoundCallback(lpDSEnumCallbackA, lpDSEnumCallbackW, &CurInfo->DeviceGuid[1], 0, WaveOutCaps.szPname, L"" , lpContext);
                if (!bResult)
                {

                    return DS_OK;
                }
            }
            else if (!bPlayback && !IsEqualGUID(&CurInfo->DeviceGuid[0], &GUID_NULL))
            {
                RtlZeroMemory(&WaveInCaps, sizeof(WAVEINCAPSW));


                ASSERT(CurInfo->MappedId[1] != ULONG_MAX);


                waveInGetDevCapsW((UINT_PTR)CurInfo->MappedId[0], &WaveInCaps, sizeof(WAVEINCAPSW));
                WaveInCaps.szPname[MAXPNAMELEN-1] = L'\0';

                bResult = DoDSoundCallback(lpDSEnumCallbackA, lpDSEnumCallbackW, &CurInfo->DeviceGuid[0], 0, WaveInCaps.szPname, L"" , lpContext);
                if (!bResult)
                {

                    return DS_OK;
                }
            }


            CurInfo = CurInfo->lpNext;
        }while(CurInfo);
    }
    return DS_OK;
}
