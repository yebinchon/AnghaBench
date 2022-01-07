
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int UINT ;
typedef int * D3DXHANDLE ;


 int TRACE (char*,struct d3dx_parameter*) ;
 int WARN (char*) ;
 struct d3dx_parameter* get_annotation_by_name (struct d3dx9_base_effect*,int ,struct d3dx_parameter*,char const*) ;
 int get_annotation_from_object (struct d3dx9_base_effect*,int *,struct d3dx_parameter**) ;
 int * get_parameter_handle (struct d3dx_parameter*) ;

__attribute__((used)) static D3DXHANDLE d3dx9_base_effect_get_annotation_by_name(struct d3dx9_base_effect *base,
        D3DXHANDLE object, const char *name)
{
    struct d3dx_parameter *annotation = ((void*)0);
    struct d3dx_parameter *annotations = ((void*)0);
    UINT annotation_count = 0;

    if (!name)
    {
        WARN("Invalid argument specified\n");
        return ((void*)0);
    }

    annotation_count = get_annotation_from_object(base, object, &annotations);

    annotation = get_annotation_by_name(base, annotation_count, annotations, name);
    if (annotation)
    {
        TRACE("Returning parameter %p\n", annotation);
        return get_parameter_handle(annotation);
    }

    WARN("Annotation not found.\n");

    return ((void*)0);
}
