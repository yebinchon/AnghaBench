#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* szPname; } ;
typedef  TYPE_1__ WAVEOUTCAPSW ;
typedef  TYPE_1__ WAVEINCAPSW ;
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  UINT_PTR ;
struct TYPE_10__ {scalar_t__* MappedId; struct TYPE_10__* lpNext; int /*<<< orphan*/ * DeviceGuid; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_3__* LPFILTERINFO ;
typedef  int /*<<< orphan*/ * LPDSENUMCALLBACKW ;
typedef  int /*<<< orphan*/ * LPDSENUMCALLBACKA ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DSERR_INVALIDPARAM ; 
 int /*<<< orphan*/  DS_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  IDS_PRIMARY_PLAYBACK_DEVICE ; 
 int /*<<< orphan*/  IDS_PRIMARY_RECORD_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAXPNAMELEN ; 
 TYPE_3__* RootInfo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 scalar_t__ ULONG_MAX ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

HRESULT
FUNC8(
    LPDSENUMCALLBACKA lpDSEnumCallbackA,
    LPDSENUMCALLBACKW lpDSEnumCallbackW,
    LPVOID lpContext,
    BOOL bPlayback)
{
    ULONG ResourceId;
    BOOL bResult;
    LPFILTERINFO CurInfo;
    WAVEOUTCAPSW WaveOutCaps;
    WAVEINCAPSW  WaveInCaps;

    if (!RootInfo)
    {
        FUNC3(&RootInfo);
    }

    if (lpDSEnumCallbackA == NULL && lpDSEnumCallbackW == NULL)
    {
        FUNC1("No callback\n");
        return DSERR_INVALIDPARAM;
    }

    if (bPlayback)
    {
        /* use resource id of playback string */
        ResourceId = IDS_PRIMARY_PLAYBACK_DEVICE;
    }
    else
    {
        /* use resource id of playback string */
        ResourceId = IDS_PRIMARY_RECORD_DEVICE;
    }

    if (RootInfo)
    {
        /* perform first callback */
        bResult = FUNC2(lpDSEnumCallbackA, lpDSEnumCallbackW, NULL, ResourceId, NULL, L"", lpContext);
        if (!bResult)
        {
            /* callback asked as to stop */
            return DS_OK;
        }

        /* now iterate through all devices */
        CurInfo = RootInfo;

        do
        {
            if (bPlayback && !FUNC4(&CurInfo->DeviceGuid[1], &GUID_NULL))
            {
                FUNC5(&WaveOutCaps, sizeof(WAVEOUTCAPSW));

                /* sanity check */
                FUNC0(CurInfo->MappedId[1] != ULONG_MAX);

                /* get wave out caps */
                FUNC7((UINT_PTR)CurInfo->MappedId[1], &WaveOutCaps, sizeof(WAVEOUTCAPSW));
                WaveOutCaps.szPname[MAXPNAMELEN-1] = L'\0';

                bResult = FUNC2(lpDSEnumCallbackA, lpDSEnumCallbackW, &CurInfo->DeviceGuid[1], 0, WaveOutCaps.szPname, L"" /* FIXME */, lpContext);
                if (!bResult)
                {
                    /* callback asked as to stop */
                    return DS_OK;
                }
            }
            else if (!bPlayback && !FUNC4(&CurInfo->DeviceGuid[0], &GUID_NULL))
            {
                FUNC5(&WaveInCaps, sizeof(WAVEINCAPSW));

                /* sanity check */
                FUNC0(CurInfo->MappedId[1] != ULONG_MAX);

                /* get wave in caps */
                FUNC6((UINT_PTR)CurInfo->MappedId[0], &WaveInCaps, sizeof(WAVEINCAPSW));
                WaveInCaps.szPname[MAXPNAMELEN-1] = L'\0';

                bResult = FUNC2(lpDSEnumCallbackA, lpDSEnumCallbackW, &CurInfo->DeviceGuid[0], 0, WaveInCaps.szPname, L"" /* FIXME */, lpContext);
                if (!bResult)
                {
                    /* callback asked as to stop */
                    return DS_OK;
                }
            }

            /* move to next entry */
            CurInfo = CurInfo->lpNext;
        }while(CurInfo);
    }
    return DS_OK;
}