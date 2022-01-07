
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int * LPDIRECT3DTEXTURE9 ;
typedef int * LPD3D9MIPMAP ;


 int D3D9MipMap ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int lpVtbl ;

LPD3D9MIPMAP IDirect3DTexture9ToImpl(LPDIRECT3DTEXTURE9 iface)
{
    if (((void*)0) == iface)
        return ((void*)0);

    return (LPD3D9MIPMAP)((ULONG_PTR)iface - FIELD_OFFSET(D3D9MipMap, lpVtbl));
}
