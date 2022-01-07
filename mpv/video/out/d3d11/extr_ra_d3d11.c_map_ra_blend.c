
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ra_blend { ____Placeholder_ra_blend } ra_blend ;
typedef int D3D11_BLEND ;


 int D3D11_BLEND_INV_SRC_ALPHA ;
 int D3D11_BLEND_ONE ;
 int D3D11_BLEND_SRC_ALPHA ;
 int D3D11_BLEND_ZERO ;





__attribute__((used)) static D3D11_BLEND map_ra_blend(enum ra_blend blend)
{
    switch (blend) {
    default:
    case 128: return D3D11_BLEND_ZERO;
    case 131: return D3D11_BLEND_ONE;
    case 129: return D3D11_BLEND_SRC_ALPHA;
    case 130: return D3D11_BLEND_INV_SRC_ALPHA;
    };
}
