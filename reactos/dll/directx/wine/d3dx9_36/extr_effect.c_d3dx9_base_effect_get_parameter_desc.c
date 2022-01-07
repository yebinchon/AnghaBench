
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct d3dx_parameter {int bytes; int flags; int member_count; int element_count; int columns; int rows; int type; int class; int semantic; int name; } ;
struct d3dx9_base_effect {int dummy; } ;
struct TYPE_5__ {int annotation_count; } ;
struct TYPE_4__ {int Bytes; int Flags; int StructMembers; int Annotations; int Elements; int Columns; int Rows; int Type; int Class; int Semantic; int Name; } ;
typedef int HRESULT ;
typedef TYPE_1__ D3DXPARAMETER_DESC ;
typedef int D3DXHANDLE ;


 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int WARN (char*) ;
 struct d3dx_parameter* get_valid_parameter (struct d3dx9_base_effect*,int ) ;
 scalar_t__ is_top_level_parameter (struct d3dx_parameter*) ;
 TYPE_2__* top_level_parameter_from_parameter (struct d3dx_parameter*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_parameter_desc(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, D3DXPARAMETER_DESC *desc)
{
    struct d3dx_parameter *param = get_valid_parameter(base, parameter);

    if (!desc || !param)
    {
        WARN("Invalid argument specified.\n");
        return D3DERR_INVALIDCALL;
    }

    desc->Name = param->name;
    desc->Semantic = param->semantic;
    desc->Class = param->class;
    desc->Type = param->type;
    desc->Rows = param->rows;
    desc->Columns = param->columns;
    desc->Elements = param->element_count;
    desc->Annotations = is_top_level_parameter(param)
            ? top_level_parameter_from_parameter(param)->annotation_count : 0;
    desc->StructMembers = param->member_count;
    desc->Flags = param->flags;
    desc->Bytes = param->bytes;

    return D3D_OK;
}
