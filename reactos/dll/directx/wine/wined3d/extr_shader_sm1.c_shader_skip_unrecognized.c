
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_sm1_data {int dummy; } ;
struct wined3d_shader_src_param {int dummy; } ;
struct wined3d_shader_dst_param {int dummy; } ;
typedef int DWORD ;


 int FIXME (char*,int,int) ;
 int WINED3D_SM1_ADDRESS_MODE_RELATIVE ;
 scalar_t__ shader_get_param (struct wined3d_sm1_data const*,int const*,int*,int*) ;
 int shader_parse_dst_param (int,struct wined3d_shader_src_param*,struct wined3d_shader_dst_param*) ;
 int shader_parse_src_param (int,struct wined3d_shader_src_param*,struct wined3d_shader_src_param*) ;

__attribute__((used)) static unsigned int shader_skip_unrecognized(const struct wined3d_sm1_data *priv, const DWORD *ptr)
{
    unsigned int tokens_read = 0, i = 0;


    while (*ptr & 0x80000000)
    {
        DWORD token, addr_token = 0;
        struct wined3d_shader_src_param rel_addr;

        tokens_read += shader_get_param(priv, ptr, &token, &addr_token);
        ptr += tokens_read;

        FIXME("Unrecognized opcode param: token=0x%08x addr_token=0x%08x.\n", token, addr_token);

        if (token & WINED3D_SM1_ADDRESS_MODE_RELATIVE)
            shader_parse_src_param(addr_token, ((void*)0), &rel_addr);

        if (!i)
        {
            struct wined3d_shader_dst_param dst;

            shader_parse_dst_param(token, token & WINED3D_SM1_ADDRESS_MODE_RELATIVE ? &rel_addr : ((void*)0), &dst);
        }
        else
        {
            struct wined3d_shader_src_param src;

            shader_parse_src_param(token, token & WINED3D_SM1_ADDRESS_MODE_RELATIVE ? &rel_addr : ((void*)0), &src);
        }
        ++i;
    }
    return tokens_read;
}
