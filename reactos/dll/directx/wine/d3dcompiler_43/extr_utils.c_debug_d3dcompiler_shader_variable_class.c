
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3D_SHADER_VARIABLE_CLASS ;


 int D3D_SVC_INTERFACE_CLASS ;
 int D3D_SVC_INTERFACE_POINTER ;
 int D3D_SVC_MATRIX_COLUMNS ;
 int D3D_SVC_MATRIX_ROWS ;
 int D3D_SVC_OBJECT ;
 int D3D_SVC_SCALAR ;
 int D3D_SVC_STRUCT ;
 int D3D_SVC_VECTOR ;
 int FIXME (char*,int) ;
 int WINE_D3DCOMPILER_TO_STR (int ) ;

const char *debug_d3dcompiler_shader_variable_class(D3D_SHADER_VARIABLE_CLASS c)
{
    switch (c)
    {
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_SCALAR);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_VECTOR);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_MATRIX_ROWS);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_MATRIX_COLUMNS);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_OBJECT);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_STRUCT);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_INTERFACE_CLASS);
        WINE_D3DCOMPILER_TO_STR(D3D_SVC_INTERFACE_POINTER);
        default:
            FIXME("Unrecognized D3D_SHADER_VARIABLE_CLASS %#x.\n", c);
            return "unrecognized";
    }
}
