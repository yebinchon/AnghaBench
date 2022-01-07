
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_2__ {int * lpVtbl; int Format; void* dwHeight; void* dwWidth; int Usage; int BaseTexture; } ;
typedef int LPVOID ;
typedef TYPE_1__* LPD3D9MIPMAP ;
typedef int IDirect3DTexture9 ;
typedef int IDirect3DBaseTexture9Vtbl ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DIRECT3DDEVICE9_INT ;
typedef int D3DPOOL ;
typedef int D3DFORMAT ;
typedef int D3D9MipMap ;


 int AlignedAlloc (int *,int) ;
 int D3D9MipMap_Vtbl ;
 int D3D_OK ;
 int DPRINT1 (char*) ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int InitDirect3DBaseTexture9 (int *,int *,int ,void*,int ,int ,int *,int ) ;
 int RT_EXTERNAL ;
 int UNIMPLEMENTED ;

HRESULT CreateD3D9MipMap(DIRECT3DDEVICE9_INT* pDevice, UINT Width, UINT Height, UINT Levels, DWORD Usage, D3DFORMAT Format, D3DPOOL Pool, IDirect3DTexture9** ppTexture)
{
    LPD3D9MIPMAP pThisTexture;
    if (FAILED(AlignedAlloc((LPVOID*)&pThisTexture, sizeof(D3D9MipMap))))
    {
        DPRINT1("Could not create D3D9MipMap");
        return E_OUTOFMEMORY;
    }

    InitDirect3DBaseTexture9(&pThisTexture->BaseTexture, (IDirect3DBaseTexture9Vtbl*)&D3D9MipMap_Vtbl, Usage, Levels, Format, Pool, pDevice, RT_EXTERNAL);

    pThisTexture->lpVtbl = &D3D9MipMap_Vtbl;

    pThisTexture->Usage = Usage;
    pThisTexture->dwWidth = Width;
    pThisTexture->dwHeight = Height;
    pThisTexture->Format = Format;

    *ppTexture = (IDirect3DTexture9*)&pThisTexture->lpVtbl;

    UNIMPLEMENTED;
    return D3D_OK;
}
