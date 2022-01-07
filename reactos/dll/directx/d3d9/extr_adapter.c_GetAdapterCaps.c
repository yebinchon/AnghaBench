
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int DeviceType; int NumberOfAdaptersInGroup; int AdapterOrdinalInGroup; int MasterAdapterOrdinal; } ;
struct TYPE_9__ {TYPE_3__ DriverCaps9; } ;
struct TYPE_10__ {int NumAdaptersInGroup; int AdapterIndexInGroup; int MasterAdapterIndex; TYPE_1__ DriverCaps; } ;
typedef TYPE_2__* LPDIRECT3D9_DISPLAYADAPTER ;
typedef int HRESULT ;
typedef int D3DDEVTYPE ;
typedef TYPE_3__ D3DCAPS9 ;


 int CopyDriverCaps (TYPE_3__*,TYPE_3__*) ;




 int D3DERR_INVALIDDEVICE ;
 int D3D_OK ;
 int DPRINT1 (char*) ;
 scalar_t__ SUCCEEDED (int ) ;
 int UNIMPLEMENTED ;
 int ZeroMemory (TYPE_3__*,int) ;

HRESULT GetAdapterCaps(const LPDIRECT3D9_DISPLAYADAPTER pDisplayAdapter, D3DDEVTYPE DeviceType, D3DCAPS9* pDstCaps)
{
    HRESULT hResult = D3DERR_INVALIDDEVICE;
    D3DCAPS9* pDriverCaps = ((void*)0);

    ZeroMemory(pDstCaps, sizeof(D3DCAPS9));

    switch (DeviceType)
    {
    case 131:
        pDriverCaps = &pDisplayAdapter->DriverCaps.DriverCaps9;
        hResult = D3D_OK;
        break;

    case 129:
    case 128:
    case 130:
        UNIMPLEMENTED;
        hResult = D3D_OK;
        break;

    default:
        DPRINT1("Unknown DeviceType argument");
        break;
    }

    if (pDriverCaps != ((void*)0))
    {
        CopyDriverCaps(pDriverCaps, pDstCaps);
    }

    if (SUCCEEDED(hResult))
    {
        pDstCaps->DeviceType = DeviceType;
        pDstCaps->MasterAdapterOrdinal = pDisplayAdapter->MasterAdapterIndex;
        pDstCaps->AdapterOrdinalInGroup = pDisplayAdapter->AdapterIndexInGroup;
        pDstCaps->NumberOfAdaptersInGroup = pDisplayAdapter->NumAdaptersInGroup;
    }

    return hResult;
}
