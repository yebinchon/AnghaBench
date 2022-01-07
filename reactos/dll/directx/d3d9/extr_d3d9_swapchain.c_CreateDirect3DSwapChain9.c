
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct _Direct3DDevice9_INT {TYPE_2__* DeviceData; int lpVtbl; } ;
typedef enum REF_TYPE { ____Placeholder_REF_TYPE } REF_TYPE ;
struct TYPE_5__ {int lpVtbl; } ;
struct TYPE_7__ {size_t ChainIndex; size_t AdapterGroupIndex; scalar_t__ pUnknown015c; int pUnknown6BC; int * lpVtbl; TYPE_1__ BaseObject; } ;
struct TYPE_6__ {int pUnknown6BC; } ;
typedef scalar_t__ LPVOID ;
typedef int IUnknown ;
typedef TYPE_3__ Direct3DSwapChain9_INT ;
typedef size_t DWORD ;
typedef int D3D9BaseObject ;


 int AlignedAlloc (scalar_t__*,int) ;
 int DPRINT1 (char*) ;
 int Direct3DSwapChain9_Vtbl ;
 scalar_t__ FAILED (int ) ;
 int InitD3D9BaseObject (int *,int,int *) ;

Direct3DSwapChain9_INT* CreateDirect3DSwapChain9(enum REF_TYPE RefType, struct _Direct3DDevice9_INT* pBaseDevice, DWORD ChainIndex)
{
    Direct3DSwapChain9_INT* pThisSwapChain;
    if (FAILED(AlignedAlloc((LPVOID*)&pThisSwapChain, sizeof(Direct3DSwapChain9_INT))))
    {
        DPRINT1("Could not create Direct3DSwapChain9_INT");
        return ((void*)0);
    }

    InitD3D9BaseObject((D3D9BaseObject*) &pThisSwapChain->BaseObject.lpVtbl, RefType, (IUnknown*) &pBaseDevice->lpVtbl);

    pThisSwapChain->lpVtbl = &Direct3DSwapChain9_Vtbl;

    pThisSwapChain->ChainIndex = ChainIndex;
    pThisSwapChain->AdapterGroupIndex = ChainIndex;
    pThisSwapChain->pUnknown6BC = pBaseDevice->DeviceData[ChainIndex].pUnknown6BC;
    pThisSwapChain->pUnknown015c = (LPVOID)0xD3D9D3D9;

    return pThisSwapChain;
}
