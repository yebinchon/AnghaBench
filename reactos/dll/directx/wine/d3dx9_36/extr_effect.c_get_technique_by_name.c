
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_technique {int name; } ;
struct d3dx9_base_effect {size_t technique_count; struct d3dx_technique* techniques; } ;
typedef size_t UINT ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static struct d3dx_technique *get_technique_by_name(struct d3dx9_base_effect *base, const char *name)
{
    UINT i;

    if (!name) return ((void*)0);

    for (i = 0; i < base->technique_count; ++i)
    {
        if (!strcmp(base->techniques[i].name, name))
            return &base->techniques[i];
    }

    return ((void*)0);
}
