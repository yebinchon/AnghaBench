
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct d3dx9_base_effect {int technique_count; int parameter_count; } ;
struct TYPE_3__ {int Techniques; int Parameters; scalar_t__ Functions; int * Creator; } ;
typedef int HRESULT ;
typedef TYPE_1__ D3DXEFFECT_DESC ;


 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int FIXME (char*) ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_desc(struct d3dx9_base_effect *base, D3DXEFFECT_DESC *desc)
{
    if (!desc)
    {
        WARN("Invalid argument specified.\n");
        return D3DERR_INVALIDCALL;
    }

    FIXME("partial stub!\n");


    desc->Creator = ((void*)0);
    desc->Functions = 0;
    desc->Parameters = base->parameter_count;
    desc->Techniques = base->technique_count;

    return D3D_OK;
}
