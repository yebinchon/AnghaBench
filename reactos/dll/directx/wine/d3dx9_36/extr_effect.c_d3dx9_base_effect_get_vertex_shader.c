
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {scalar_t__ type; scalar_t__ data; int element_count; } ;
struct d3dx9_base_effect {int dummy; } ;
struct IDirect3DVertexShader9 {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPT_VERTEXSHADER ;
 int D3D_OK ;
 int IDirect3DVertexShader9_AddRef (struct IDirect3DVertexShader9*) ;
 int TRACE (char*,struct IDirect3DVertexShader9*) ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_vertex_shader(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, struct IDirect3DVertexShader9 **shader)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (shader && param && !param->element_count && param->type == D3DXPT_VERTEXSHADER)
    {
        if ((*shader = *(struct IDirect3DVertexShader9 **)param->data))
            IDirect3DVertexShader9_AddRef(*shader);
        TRACE("Returning %p.\n", *shader);
        return D3D_OK;
    }

    WARN("Parameter not found.\n");

    return D3DERR_INVALIDCALL;
}
