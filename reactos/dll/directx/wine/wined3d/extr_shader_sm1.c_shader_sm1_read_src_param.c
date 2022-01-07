
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_sm1_data {int dummy; } ;
struct wined3d_shader_src_param {int dummy; } ;
typedef int DWORD ;


 int WINED3D_SM1_ADDRESS_MODE_RELATIVE ;
 int shader_get_param (struct wined3d_sm1_data*,int const*,int*,int*) ;
 int shader_parse_src_param (int,struct wined3d_shader_src_param*,struct wined3d_shader_src_param*) ;

__attribute__((used)) static void shader_sm1_read_src_param(struct wined3d_sm1_data *priv, const DWORD **ptr,
        struct wined3d_shader_src_param *src_param, struct wined3d_shader_src_param *src_rel_addr)
{
    DWORD token, addr_token;

    *ptr += shader_get_param(priv, *ptr, &token, &addr_token);
    if (token & WINED3D_SM1_ADDRESS_MODE_RELATIVE)
    {
        shader_parse_src_param(addr_token, ((void*)0), src_rel_addr);
        shader_parse_src_param(token, src_rel_addr, src_param);
    }
    else
    {
        shader_parse_src_param(token, ((void*)0), src_param);
    }
}
