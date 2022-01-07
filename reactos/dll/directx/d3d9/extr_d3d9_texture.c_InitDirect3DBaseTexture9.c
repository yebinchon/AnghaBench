
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _Direct3DDevice9_INT {int dummy; } ;
typedef enum REF_TYPE { ____Placeholder_REF_TYPE } REF_TYPE ;
typedef void* UINT ;
struct TYPE_3__ {int wPaletteIndex; int Usage; int bIsAutoGenMipMap; int FilterType; void* MipMapLevels2; void* MipMapLevels; int Format; int * lpVtbl; int BaseResource; } ;
typedef int IDirect3DBaseTexture9Vtbl ;
typedef TYPE_1__ Direct3DBaseTexture9_INT ;
typedef int DWORD ;
typedef int D3DPOOL ;
typedef int D3DFORMAT ;


 int D3DTEXF_LINEAR ;
 int D3DUSAGE_AUTOGENMIPMAP ;
 int InitDirect3DResource9 (int *,int ,struct _Direct3DDevice9_INT*,int) ;

void InitDirect3DBaseTexture9(Direct3DBaseTexture9_INT* pBaseTexture,
                              IDirect3DBaseTexture9Vtbl* pVtbl,
                              DWORD Usage,
                              UINT Levels,
                              D3DFORMAT Format,
                              D3DPOOL Pool,
                              struct _Direct3DDevice9_INT* pDevice,
                              enum REF_TYPE RefType)
{
    InitDirect3DResource9(&pBaseTexture->BaseResource, Pool, pDevice, RefType);

    pBaseTexture->lpVtbl = pVtbl;
    pBaseTexture->Format = Format;
    pBaseTexture->wPaletteIndex = 0xFFFF;
    pBaseTexture->Usage = Usage;
    pBaseTexture->MipMapLevels = Levels;
    pBaseTexture->MipMapLevels2 = Levels;

    pBaseTexture->FilterType = D3DTEXF_LINEAR;
    pBaseTexture->bIsAutoGenMipMap = (Usage & D3DUSAGE_AUTOGENMIPMAP) != 0;
}
