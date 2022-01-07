
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx9_base_effect {unsigned int parameter_count; unsigned int technique_count; unsigned int object_count; int * objects; int * techniques; int * parameters; int full_name_tmp; } ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,struct d3dx9_base_effect*) ;
 int free_object (int *) ;
 int free_technique (int *) ;
 int free_top_level_parameter (int *) ;
 int heap_free (int ) ;

__attribute__((used)) static void d3dx9_base_effect_cleanup(struct d3dx9_base_effect *base)
{
    unsigned int i;

    TRACE("base %p.\n", base);

    heap_free(base->full_name_tmp);

    if (base->parameters)
    {
        for (i = 0; i < base->parameter_count; ++i)
            free_top_level_parameter(&base->parameters[i]);
        HeapFree(GetProcessHeap(), 0, base->parameters);
        base->parameters = ((void*)0);
    }

    if (base->techniques)
    {
        for (i = 0; i < base->technique_count; ++i)
            free_technique(&base->techniques[i]);
        HeapFree(GetProcessHeap(), 0, base->techniques);
        base->techniques = ((void*)0);
    }

    if (base->objects)
    {
        for (i = 0; i < base->object_count; ++i)
        {
            free_object(&base->objects[i]);
        }
        HeapFree(GetProcessHeap(), 0, base->objects);
        base->objects = ((void*)0);
    }
}
