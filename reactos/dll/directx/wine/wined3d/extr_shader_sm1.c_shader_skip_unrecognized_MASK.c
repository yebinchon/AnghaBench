#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wined3d_sm1_data {int dummy; } ;
struct wined3d_shader_src_param {int dummy; } ;
struct wined3d_shader_dst_param {int dummy; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int WINED3D_SM1_ADDRESS_MODE_RELATIVE ; 
 scalar_t__ FUNC1 (struct wined3d_sm1_data const*,int const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct wined3d_shader_src_param*,struct wined3d_shader_dst_param*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct wined3d_shader_src_param*,struct wined3d_shader_src_param*) ; 

__attribute__((used)) static unsigned int FUNC4(const struct wined3d_sm1_data *priv, const DWORD *ptr)
{
    unsigned int tokens_read = 0, i = 0;

    /* TODO: Think of a good name for 0x80000000 and replace it with a constant */
    while (*ptr & 0x80000000)
    {
        DWORD token, addr_token = 0;
        struct wined3d_shader_src_param rel_addr;

        tokens_read += FUNC1(priv, ptr, &token, &addr_token);
        ptr += tokens_read;

        FUNC0("Unrecognized opcode param: token=0x%08x addr_token=0x%08x.\n", token, addr_token);

        if (token & WINED3D_SM1_ADDRESS_MODE_RELATIVE)
            FUNC3(addr_token, NULL, &rel_addr);

        if (!i)
        {
            struct wined3d_shader_dst_param dst;

            FUNC2(token, token & WINED3D_SM1_ADDRESS_MODE_RELATIVE ? &rel_addr : NULL, &dst);
        }
        else
        {
            struct wined3d_shader_src_param src;

            FUNC3(token, token & WINED3D_SM1_ADDRESS_MODE_RELATIVE ? &rel_addr : NULL, &src);
        }
        ++i;
    }
    return tokens_read;
}