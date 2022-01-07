
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_shader {int dummy; } ;
typedef int HRESULT ;
typedef int DWORD ;


 int const D3DVSD_CONSTADDRESSMASK ;
 int const D3DVSD_CONSTADDRESSSHIFT ;
 int const D3DVSD_CONSTCOUNTMASK ;
 int const D3DVSD_CONSTCOUNTSHIFT ;
 int const D3DVSD_END () ;
 int const D3DVSD_TOKENTYPEMASK ;
 int const D3DVSD_TOKENTYPESHIFT ;
 int const D3DVSD_TOKEN_CONSTMEM ;
 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int,float const,float const,float const,float const) ;
 scalar_t__ TRACE_ON (int ) ;
 int d3d8 ;
 int parse_token (int const*) ;
 int wined3d_shader_set_local_constants_float (struct wined3d_shader*,int,float const*,int) ;

void load_local_constants(const DWORD *d3d8_elements, struct wined3d_shader *wined3d_vertex_shader)
{
    const DWORD *token = d3d8_elements;

    while (*token != D3DVSD_END())
    {
        if (((*token & D3DVSD_TOKENTYPEMASK) >> D3DVSD_TOKENTYPESHIFT) == D3DVSD_TOKEN_CONSTMEM)
        {
            DWORD count = ((*token & D3DVSD_CONSTCOUNTMASK) >> D3DVSD_CONSTCOUNTSHIFT);
            DWORD constant_idx = ((*token & D3DVSD_CONSTADDRESSMASK) >> D3DVSD_CONSTADDRESSSHIFT);
            HRESULT hr;

            if (TRACE_ON(d3d8))
            {
                DWORD i;
                for (i = 0; i < count; ++i)
                {
                    TRACE("c[%u] = (%8f, %8f, %8f, %8f)\n",
                            constant_idx,
                            *(const float *)(token + i * 4 + 1),
                            *(const float *)(token + i * 4 + 2),
                            *(const float *)(token + i * 4 + 3),
                            *(const float *)(token + i * 4 + 4));
                }
            }
            hr = wined3d_shader_set_local_constants_float(wined3d_vertex_shader,
                    constant_idx, (const float *)token + 1, count);
            if (FAILED(hr)) ERR("Failed setting shader constants\n");
        }

        token += parse_token(token);
    }
}
