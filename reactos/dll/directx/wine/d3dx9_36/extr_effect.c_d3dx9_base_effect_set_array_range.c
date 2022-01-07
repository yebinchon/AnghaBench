
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3dx9_base_effect {int dummy; } ;
typedef int UINT ;
typedef int HRESULT ;
typedef int D3DXHANDLE ;


 int E_NOTIMPL ;
 int FIXME (char*) ;

__attribute__((used)) static HRESULT d3dx9_base_effect_set_array_range(struct d3dx9_base_effect *base,
        D3DXHANDLE parameter, UINT start, UINT end)
{
    FIXME("stub!\n");

    return E_NOTIMPL;
}
