
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3DXPARAMETER_CLASS ;


 int D3DXPC_MATRIX_COLUMNS ;
 int D3DXPC_MATRIX_ROWS ;
 int D3DXPC_OBJECT ;
 int D3DXPC_SCALAR ;
 int D3DXPC_STRUCT ;
 int D3DXPC_VECTOR ;
 int FIXME (char*,int) ;
 int WINE_D3DX_TO_STR (int ) ;

const char *debug_d3dxparameter_class(D3DXPARAMETER_CLASS c)
{
    switch (c)
    {
        WINE_D3DX_TO_STR(D3DXPC_SCALAR);
        WINE_D3DX_TO_STR(D3DXPC_VECTOR);
        WINE_D3DX_TO_STR(D3DXPC_MATRIX_ROWS);
        WINE_D3DX_TO_STR(D3DXPC_MATRIX_COLUMNS);
        WINE_D3DX_TO_STR(D3DXPC_OBJECT);
        WINE_D3DX_TO_STR(D3DXPC_STRUCT);
        default:
            FIXME("Unrecognized D3DXPARAMETER_CLASS %#x.\n", c);
            return "unrecognized";
    }
}
