
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pSupportedQueriesList; scalar_t__ NumSupportedQueries; int * pSupportedExtendedModes; scalar_t__ NumSupportedExtendedModes; int * pSupportedFormatOps; scalar_t__ NumSupportedFormatOps; int dwRefreshRate; int DisplayFormat; int RawDisplayFormat; int dwDisplayHeight; int dwDisplayWidth; } ;
struct TYPE_6__ {TYPE_2__ DriverCaps; int hD3DRefDll; int szDeviceName; int D3D9Callbacks; int * pUnknown6BC; int DeviceType; int hDC; } ;
typedef int * LPDDSURFACEDESC ;
typedef TYPE_1__* LPD3D9_DEVICEDATA ;
typedef scalar_t__ DWORD ;
typedef int DDSURFACEDESC ;
typedef int DDPIXELFORMAT ;
typedef int D3DQUERYTYPE ;
typedef int D3DHAL_GLOBALDRIVERDATA ;
typedef int D3DHAL_D3DEXTENDEDCAPS ;
typedef int D3DDISPLAYMODE ;
typedef TYPE_2__ D3D9_DRIVERCAPS ;
typedef int D3D9_CALLBACKS ;
typedef scalar_t__ BOOL ;


 scalar_t__ CanReenableDirectDrawObject (int *) ;
 int CreateInternalDeviceData (int ,int ,int **,int ,int *) ;
 int DPRINT1 (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ GetD3D9DriverInfo (int *,TYPE_2__*,int *,int ,int ,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int ReleaseInternalDeviceData (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int max (scalar_t__,int) ;

BOOL GetDeviceData(LPD3D9_DEVICEDATA pDeviceData)
{
    BOOL bRet;
    D3DHAL_GLOBALDRIVERDATA GlobalDriverData;
    D3DHAL_D3DEXTENDEDCAPS D3dExtendedCaps;
    LPDDSURFACEDESC puD3dTextureFormats;
    DDPIXELFORMAT* pD3dZStencilFormatList;
    D3DDISPLAYMODE* pD3dDisplayModeList;
    D3DQUERYTYPE* pD3dQueryList;
    DWORD NumTextureFormats = 0;
    DWORD NumStencilFormats = 0;
    DWORD NumExtendedFormats = 0;
    DWORD NumQueries = 0;

    if (((void*)0) == pDeviceData->pUnknown6BC)
    {
        CreateInternalDeviceData(
            pDeviceData->hDC,
            pDeviceData->szDeviceName,
            &pDeviceData->pUnknown6BC,
            pDeviceData->DeviceType,
            &pDeviceData->hD3DRefDll
            );

        if (((void*)0) == pDeviceData->pUnknown6BC)
        {
            DPRINT1("Failed to create DirectDrawObject for Direct3D9");
            return FALSE;
        }
    }
    else
    {
        D3D9_DRIVERCAPS DriverCaps;
        D3D9_CALLBACKS D3D9Callbacks;

        if (FALSE == CanReenableDirectDrawObject(pDeviceData->pUnknown6BC))
        {
            DPRINT1("Failed to re-enable DirectDrawObject");
            return FALSE;
        }

        bRet = GetD3D9DriverInfo(
            pDeviceData->pUnknown6BC,
            &DriverCaps,
            &D3D9Callbacks,
            pDeviceData->szDeviceName,
            pDeviceData->hD3DRefDll,
            &GlobalDriverData,
            &D3dExtendedCaps,
            ((void*)0),
            ((void*)0),
            ((void*)0),
            ((void*)0),
            &NumTextureFormats,
            &NumStencilFormats,
            &NumExtendedFormats,
            &NumQueries
            );

        if (TRUE == bRet)
        {
            pDeviceData->DriverCaps.dwDisplayWidth = DriverCaps.dwDisplayWidth;
            pDeviceData->DriverCaps.dwDisplayHeight = DriverCaps.dwDisplayHeight;
            pDeviceData->DriverCaps.RawDisplayFormat = DriverCaps.RawDisplayFormat;
            pDeviceData->DriverCaps.DisplayFormat = DriverCaps.DisplayFormat;
            pDeviceData->DriverCaps.dwRefreshRate = DriverCaps.dwRefreshRate;
        }

        return bRet;
    }


    if (pDeviceData->DriverCaps.pSupportedFormatOps)
    {
        HeapFree(GetProcessHeap(), 0, pDeviceData->DriverCaps.pSupportedFormatOps);
        pDeviceData->DriverCaps.pSupportedFormatOps = ((void*)0);
    }
    if (pDeviceData->DriverCaps.pSupportedExtendedModes)
    {
        HeapFree(GetProcessHeap(), 0, pDeviceData->DriverCaps.pSupportedExtendedModes);
        pDeviceData->DriverCaps.pSupportedExtendedModes = ((void*)0);
    }
    if (pDeviceData->DriverCaps.pSupportedQueriesList)
    {
        HeapFree(GetProcessHeap(), 0, pDeviceData->DriverCaps.pSupportedQueriesList);
        pDeviceData->DriverCaps.pSupportedQueriesList = ((void*)0);
    }

    if (FALSE == CanReenableDirectDrawObject(pDeviceData->pUnknown6BC))
    {
        DPRINT1("Failed to re-enable DirectDrawObject");
        ReleaseInternalDeviceData(pDeviceData);
        return FALSE;
    }

    bRet = GetD3D9DriverInfo(
        pDeviceData->pUnknown6BC,
        &pDeviceData->DriverCaps,
        &pDeviceData->D3D9Callbacks,
        pDeviceData->szDeviceName,
        pDeviceData->hD3DRefDll,
        &GlobalDriverData,
        &D3dExtendedCaps,
        ((void*)0),
        ((void*)0),
        ((void*)0),
        ((void*)0),
        &NumTextureFormats,
        &NumStencilFormats,
        &NumExtendedFormats,
        &NumQueries
        );

    if (FALSE == bRet)
    {
        DPRINT1("Could not query DirectDrawObject, aborting");
        ReleaseInternalDeviceData(pDeviceData);
        return FALSE;
    }

    puD3dTextureFormats = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, max(NumTextureFormats, 1) * sizeof(DDSURFACEDESC));
    pD3dZStencilFormatList = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, max(NumStencilFormats, 1) * sizeof(DDPIXELFORMAT));
    pD3dDisplayModeList = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, max(NumExtendedFormats, 1) * sizeof(D3DDISPLAYMODE));
    pD3dQueryList = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, max(NumQueries, 1) * sizeof(D3DQUERYTYPE));

    bRet = GetD3D9DriverInfo(
        pDeviceData->pUnknown6BC,
        &pDeviceData->DriverCaps,
        &pDeviceData->D3D9Callbacks,
        pDeviceData->szDeviceName,
        pDeviceData->hD3DRefDll,
        &GlobalDriverData,
        &D3dExtendedCaps,
        puD3dTextureFormats,
        pD3dZStencilFormatList,
        pD3dDisplayModeList,
        pD3dQueryList,
        &NumTextureFormats,
        &NumStencilFormats,
        &NumExtendedFormats,
        &NumQueries
        );

    if (FALSE == bRet)
    {
        DPRINT1("Could not query DirectDrawObject, aborting");
        HeapFree(GetProcessHeap(), 0, puD3dTextureFormats);
        HeapFree(GetProcessHeap(), 0, pD3dZStencilFormatList);
        HeapFree(GetProcessHeap(), 0, pD3dDisplayModeList);
        HeapFree(GetProcessHeap(), 0, pD3dQueryList);
        ReleaseInternalDeviceData(pDeviceData);
        return FALSE;
    }

    pDeviceData->DriverCaps.NumSupportedFormatOps = NumTextureFormats;
    if (NumTextureFormats > 0)
        pDeviceData->DriverCaps.pSupportedFormatOps = puD3dTextureFormats;

    pDeviceData->DriverCaps.NumSupportedExtendedModes = NumExtendedFormats;
    if (NumExtendedFormats > 0)
        pDeviceData->DriverCaps.pSupportedExtendedModes = pD3dDisplayModeList;

    pDeviceData->DriverCaps.NumSupportedQueries = NumQueries;
    if (NumQueries > 0)
        pDeviceData->DriverCaps.pSupportedQueriesList = pD3dQueryList;

    HeapFree(GetProcessHeap(), 0, pD3dZStencilFormatList);

    return TRUE;
}
