
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wined3d_swap_effect { ____Placeholder_wined3d_swap_effect } wined3d_swap_effect ;
typedef int D3DSWAPEFFECT ;


 int D3DSWAPEFFECT_COPY ;
 int D3DSWAPEFFECT_COPY_VSYNC ;
 int D3DSWAPEFFECT_DISCARD ;
 int D3DSWAPEFFECT_FLIP ;
 int FIXME (char*,int) ;





__attribute__((used)) static D3DSWAPEFFECT d3dswapeffect_from_wined3dswapeffect(enum wined3d_swap_effect effect)
{
    switch (effect)
    {
        case 129:
            return D3DSWAPEFFECT_DISCARD;
        case 128:
            return D3DSWAPEFFECT_FLIP;
        case 131:
            return D3DSWAPEFFECT_COPY;
        case 130:
            return D3DSWAPEFFECT_COPY_VSYNC;
        default:
            FIXME("Unhandled swap effect %#x.\n", effect);
            return D3DSWAPEFFECT_FLIP;
    }
}
