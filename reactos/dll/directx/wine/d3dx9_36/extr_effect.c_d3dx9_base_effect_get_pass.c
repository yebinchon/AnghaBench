
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {size_t pass_count; int * passes; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,int *) ;
 int WARN (char*) ;
 int * get_pass_handle (int *) ;
 struct d3dx_technique* get_valid_technique (struct d3dx9_base_effect*,int *) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_pass(struct d3dx9_base_effect *base,
        D3DXHANDLE technique, UINT index)
{
    struct d3dx_technique *tech = get_valid_technique(base, technique);

    if (tech && index < tech->pass_count)
    {
        TRACE("Returning pass %p\n", &tech->passes[index]);
        return get_pass_handle(&tech->passes[index]);
    }

    WARN("Pass not found.\n");

    return ((void*)0);
}
