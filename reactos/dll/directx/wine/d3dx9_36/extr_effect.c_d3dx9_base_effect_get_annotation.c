
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef size_t UINT ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,struct d3dx_parameter*) ;
 int WARN (char*) ;
 size_t get_annotation_from_object (struct d3dx9_base_effect*,int *,struct d3dx_parameter**) ;
 int * get_parameter_handle (struct d3dx_parameter*) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_annotation(struct d3dx9_base_effect *base,
        D3DXHANDLE object, UINT index)
{
    struct d3dx_parameter *annotations = ((void*)0);
    UINT annotation_count = 0;

    annotation_count = get_annotation_from_object(base, object, &annotations);

    if (index < annotation_count)
    {
        TRACE("Returning parameter %p\n", &annotations[index]);
        return get_parameter_handle(&annotations[index]);
    }

    WARN("Annotation not found.\n");

    return ((void*)0);
}
