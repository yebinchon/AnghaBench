
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_swap_effect { ____Placeholder_wined3d_swap_effect } wined3d_swap_effect ;
typedef int D3DSWAPEFFECT ;







 int FIXME (char*,int) ;
 int WINED3D_SWAP_EFFECT_COPY ;
 int WINED3D_SWAP_EFFECT_DISCARD ;
 int WINED3D_SWAP_EFFECT_FLIP_SEQUENTIAL ;
 int WINED3D_SWAP_EFFECT_OVERLAY ;
 int WINED3D_SWAP_EFFECT_SEQUENTIAL ;

__attribute__((used)) static enum wined3d_swap_effect wined3dswapeffect_from_d3dswapeffect(D3DSWAPEFFECT effect)
{
    switch (effect)
    {
        case 131:
            return WINED3D_SWAP_EFFECT_DISCARD;
        case 130:
            return WINED3D_SWAP_EFFECT_SEQUENTIAL;
        case 132:
            return WINED3D_SWAP_EFFECT_COPY;
        case 128:
            return WINED3D_SWAP_EFFECT_OVERLAY;
        case 129:
            return WINED3D_SWAP_EFFECT_FLIP_SEQUENTIAL;
        default:
            FIXME("Unhandled swap effect %#x.\n", effect);
            return WINED3D_SWAP_EFFECT_SEQUENTIAL;
    }
}
