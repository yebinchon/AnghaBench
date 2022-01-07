
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pUnknown; } ;
typedef int LPDIRECT3DDEVICE9 ;
typedef int HRESULT ;
typedef int DIRECT3DDEVICE9_INT ;
typedef TYPE_1__ D3D9BaseObject ;


 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int E_NOINTERFACE ;
 scalar_t__ FAILED (int ) ;
 int * IDirect3DDevice9ToImpl (int ) ;
 int IID_IDirect3DDevice9 ;
 int IUnknown_QueryInterface (scalar_t__,int *,void**) ;

HRESULT D3D9BaseObject_GetDeviceInt(D3D9BaseObject* pBaseObject, DIRECT3DDEVICE9_INT** ppDevice)
{
    if (((void*)0) == ppDevice)
        return D3DERR_INVALIDCALL;

    *ppDevice = ((void*)0);

    if (pBaseObject->pUnknown)
    {
        LPDIRECT3DDEVICE9 pDevice;
        if (FAILED(IUnknown_QueryInterface(pBaseObject->pUnknown, &IID_IDirect3DDevice9, (void**)&pDevice)))
            return E_NOINTERFACE;

        *ppDevice = IDirect3DDevice9ToImpl(pDevice);
        return D3D_OK;
    }

    return E_NOINTERFACE;
}
