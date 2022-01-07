
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pUnknown; } ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef TYPE_1__ D3D9BaseObject ;


 int E_NOINTERFACE ;
 int IID_IDirect3DDevice9 ;
 int IUnknown_QueryInterface (scalar_t__,int *,void**) ;

HRESULT D3D9BaseObject_GetDevice(D3D9BaseObject* pBaseObject, IDirect3DDevice9** ppDevice)
{
    if (pBaseObject->pUnknown)
    {
        return IUnknown_QueryInterface(pBaseObject->pUnknown, &IID_IDirect3DDevice9, (void**)ppDevice);
    }

    return E_NOINTERFACE;
}
