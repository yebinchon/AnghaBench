
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int flags; } ;
struct d3dx_object {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int D3DX_PARAMETER_ANNOTATION ;
 scalar_t__ D3D_OK ;
 int TRACE (char*,int) ;
 int WARN (char*) ;
 scalar_t__ d3dx9_parse_effect_typedef (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*,char const**,int *,int ) ;
 scalar_t__ d3dx9_parse_init_value (struct d3dx9_base_effect*,struct d3dx_parameter*,char const*,char const*,struct d3dx_object*) ;
 int read_dword (char const**,int*) ;

__attribute__((used)) static HRESULT d3dx9_parse_effect_annotation(struct d3dx9_base_effect *base, struct d3dx_parameter *anno,
        const char *data, const char **ptr, struct d3dx_object *objects)
{
    DWORD offset;
    const char *ptr2;
    HRESULT hr;

    anno->flags = D3DX_PARAMETER_ANNOTATION;

    read_dword(ptr, &offset);
    TRACE("Typedef offset: %#x\n", offset);
    ptr2 = data + offset;
    hr = d3dx9_parse_effect_typedef(base, anno, data, &ptr2, ((void*)0), D3DX_PARAMETER_ANNOTATION);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse type definition\n");
        return hr;
    }

    read_dword(ptr, &offset);
    TRACE("Value offset: %#x\n", offset);
    hr = d3dx9_parse_init_value(base, anno, data, data + offset, objects);
    if (hr != D3D_OK)
    {
        WARN("Failed to parse value\n");
        return hr;
    }

    return D3D_OK;
}
