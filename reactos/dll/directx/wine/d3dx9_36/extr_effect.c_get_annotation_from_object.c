
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx_top_level_parameter {int annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_technique {int annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_pass {int annotation_count; struct d3dx_parameter* annotations; } ;
struct d3dx_parameter {int dummy; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef int UINT ;
typedef int D3DXHANDLE ;


 int FIXME (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 struct d3dx_pass* get_valid_pass (struct d3dx9_base_effect*,int ) ;
 struct d3dx_technique* get_valid_technique (struct d3dx9_base_effect*,int ) ;
 scalar_t__ is_top_level_parameter (struct d3dx_parameter*) ;
 struct d3dx_top_level_parameter* top_level_parameter_from_parameter (struct d3dx_parameter*) ;

__attribute__((used)) static UINT get_annotation_from_object(struct d3dx9_base_effect *base,
        D3DXHANDLE object, struct d3dx_parameter **annotations)
{
    struct d3dx_parameter *param = get_valid_parameter(base, object);
    struct d3dx_pass *pass = get_valid_pass(base, object);
    struct d3dx_technique *technique = get_valid_technique(base, object);

    if (pass)
    {
        *annotations = pass->annotations;
        return pass->annotation_count;
    }
    else if (technique)
    {
        *annotations = technique->annotations;
        return technique->annotation_count;
    }
    else if (param)
    {
        if (is_top_level_parameter(param))
        {
            struct d3dx_top_level_parameter *top_param
                    = top_level_parameter_from_parameter(param);

            *annotations = top_param->annotations;
            return top_param->annotation_count;
        }
        else
        {
            *annotations = ((void*)0);
            return 0;
        }
    }
    else
    {
        FIXME("Functions are not handled, yet!\n");
        return 0;
    }
}
