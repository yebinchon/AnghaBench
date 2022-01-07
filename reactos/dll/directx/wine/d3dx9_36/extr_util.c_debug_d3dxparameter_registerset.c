
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXREGISTER_SET ;


 int D3DXRS_BOOL ;
 int D3DXRS_FLOAT4 ;
 int D3DXRS_INT4 ;
 int D3DXRS_SAMPLER ;
 int FIXME (char*,int) ;
 int WINE_D3DX_TO_STR (int ) ;

const char *debug_d3dxparameter_registerset(D3DXREGISTER_SET r)
{
    switch (r)
    {
        WINE_D3DX_TO_STR(D3DXRS_BOOL);
        WINE_D3DX_TO_STR(D3DXRS_INT4);
        WINE_D3DX_TO_STR(D3DXRS_FLOAT4);
        WINE_D3DX_TO_STR(D3DXRS_SAMPLER);
        default:
            FIXME("Unrecognized D3DXREGISTER_SET %#x.\n", r);
            return "unrecognized";
    }
}
