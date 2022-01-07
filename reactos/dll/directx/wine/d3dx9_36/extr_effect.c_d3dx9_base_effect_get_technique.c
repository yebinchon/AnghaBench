
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx9_base_effect {size_t technique_count; int * techniques; } ;
typedef size_t UINT ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,int *) ;
 int WARN (char*) ;
 int * get_technique_handle (int *) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_technique(struct d3dx9_base_effect *base, UINT index)
{
    if (index >= base->technique_count)
    {
        WARN("Invalid argument specified.\n");
        return ((void*)0);
    }

    TRACE("Returning technique %p.\n", &base->techniques[index]);

    return get_technique_handle(&base->techniques[index]);
}
