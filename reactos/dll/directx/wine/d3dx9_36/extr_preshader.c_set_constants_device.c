
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IDirect3DDevice9 {int dummy; } ;
typedef enum pres_reg_tables { ____Placeholder_pres_reg_tables } pres_reg_tables ;
typedef int ID3DXEffectStateManager ;
typedef int HRESULT ;
typedef scalar_t__ D3DXPARAMETER_TYPE ;


 int D3DERR_INVALIDCALL ;
 scalar_t__ D3DXPT_PIXELSHADER ;
 scalar_t__ D3DXPT_VERTEXSHADER ;
 int FIXME (char*,scalar_t__) ;



 int SET_D3D_STATE_ (int *,struct IDirect3DDevice9*,int ,unsigned int,void*,unsigned int) ;
 int SetPixelShaderConstantB ;
 int SetPixelShaderConstantF ;
 int SetPixelShaderConstantI ;
 int SetVertexShaderConstantB ;
 int SetVertexShaderConstantF ;
 int SetVertexShaderConstantI ;

__attribute__((used)) static HRESULT set_constants_device(ID3DXEffectStateManager *manager, struct IDirect3DDevice9 *device,
        D3DXPARAMETER_TYPE type, enum pres_reg_tables table, void *ptr,
        unsigned int start, unsigned int count)
{
    if (type == D3DXPT_VERTEXSHADER)
    {
        switch(table)
        {
            case 129:
                return SET_D3D_STATE_(manager, device, SetVertexShaderConstantF, start, ptr, count);
            case 128:
                return SET_D3D_STATE_(manager, device, SetVertexShaderConstantI, start, ptr, count);
            case 130:
                return SET_D3D_STATE_(manager, device, SetVertexShaderConstantB, start, ptr, count);
            default:
                FIXME("Unexpected register table %u.\n", table);
                return D3DERR_INVALIDCALL;
        }
    }
    else if (type == D3DXPT_PIXELSHADER)
    {
        switch(table)
        {
            case 129:
                return SET_D3D_STATE_(manager, device, SetPixelShaderConstantF, start, ptr, count);
            case 128:
                return SET_D3D_STATE_(manager, device, SetPixelShaderConstantI, start, ptr, count);
            case 130:
                return SET_D3D_STATE_(manager, device, SetPixelShaderConstantB, start, ptr, count);
            default:
                FIXME("Unexpected register table %u.\n", table);
                return D3DERR_INVALIDCALL;
        }
    }
    else
    {
        FIXME("Unexpected parameter type %u.\n", type);
        return D3DERR_INVALIDCALL;
    }
}
