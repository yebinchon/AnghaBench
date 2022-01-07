
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx9_base_effect {int dummy; } ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;
typedef int D3DXFUNCTION_DESC ;


 int E_NOTIMPL ;
 int FIXME (char*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_get_function_desc(struct d3dx9_base_effect *base,
        D3DXHANDLE shader, D3DXFUNCTION_DESC *desc)
{
    FIXME("stub!\n");

    return E_NOTIMPL;
}
