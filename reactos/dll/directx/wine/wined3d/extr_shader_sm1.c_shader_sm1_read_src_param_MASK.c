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
typedef  int DWORD ;

/* Variables and functions */
 int WINED3D_SM1_ADDRESS_MODE_RELATIVE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_sm1_data*,int const*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct wined3d_shader_src_param*,struct wined3d_shader_src_param*) ; 

__attribute__((used)) static void FUNC2(struct wined3d_sm1_data *priv, const DWORD **ptr,
        struct wined3d_shader_src_param *src_param, struct wined3d_shader_src_param *src_rel_addr)
{
    DWORD token, addr_token;

    *ptr += FUNC0(priv, *ptr, &token, &addr_token);
    if (token & WINED3D_SM1_ADDRESS_MODE_RELATIVE)
    {
        FUNC1(addr_token, NULL, src_rel_addr);
        FUNC1(token, src_rel_addr, src_param);
    }
    else
    {
        FUNC1(token, NULL, src_param);
    }
}