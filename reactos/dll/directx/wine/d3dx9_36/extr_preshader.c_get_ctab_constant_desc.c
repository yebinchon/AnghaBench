
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctab_constant {int constantinfo_reserved; int desc; } ;
typedef int WORD ;
typedef int ID3DXConstantTable ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;
typedef int D3DXCONSTANT_DESC ;


 int D3DERR_INVALIDCALL ;
 int D3D_OK ;
 int FIXME (char*) ;
 struct ctab_constant* d3dx_shader_get_ctab_constant (int *,int ) ;

__attribute__((used)) static HRESULT get_ctab_constant_desc(ID3DXConstantTable *ctab, D3DXHANDLE hc, D3DXCONSTANT_DESC *desc,
        WORD *constantinfo_reserved)
{
    const struct ctab_constant *constant = d3dx_shader_get_ctab_constant(ctab, hc);

    if (!constant)
    {
        FIXME("Could not get constant desc.\n");
        if (constantinfo_reserved)
            *constantinfo_reserved = 0;
        return D3DERR_INVALIDCALL;
    }
    *desc = constant->desc;
    if (constantinfo_reserved)
        *constantinfo_reserved = constant->constantinfo_reserved;
    return D3D_OK;
}
