
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,int *) ;
 int WARN (char*) ;
 struct d3dx_technique* get_technique_by_name (struct d3dx9_base_effect*,char const*) ;
 int * get_technique_handle (struct d3dx_technique*) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_technique_by_name(struct d3dx9_base_effect *base, const char *name)
{
    struct d3dx_technique *tech = get_technique_by_name(base, name);

    if (tech)
    {
        D3DXHANDLE t = get_technique_handle(tech);
        TRACE("Returning technique %p\n", t);
        return t;
    }

    WARN("Technique not found.\n");

    return ((void*)0);
}
