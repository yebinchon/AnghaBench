
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {unsigned int pass_count; struct d3dx_pass* passes; } ;
struct d3dx_pass {int name; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,struct d3dx_pass*) ;
 int WARN (char*) ;
 int * get_pass_handle (struct d3dx_pass*) ;
 struct d3dx_technique* get_valid_technique (struct d3dx9_base_effect*,int *) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_pass_by_name(struct d3dx9_base_effect *base,
        D3DXHANDLE technique, const char *name)
{
    struct d3dx_technique *tech = get_valid_technique(base, technique);

    if (tech && name)
    {
        unsigned int i;

        for (i = 0; i < tech->pass_count; ++i)
        {
            struct d3dx_pass *pass = &tech->passes[i];

            if (!strcmp(pass->name, name))
            {
                TRACE("Returning pass %p\n", pass);
                return get_pass_handle(pass);
            }
        }
    }

    WARN("Pass not found.\n");

    return ((void*)0);
}
