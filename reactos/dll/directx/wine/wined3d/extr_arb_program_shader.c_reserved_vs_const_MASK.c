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
struct wined3d_shader_reg_maps {int dummy; } ;
struct wined3d_gl_info {int dummy; } ;
struct arb_vshader_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ; 
 scalar_t__ FUNC1 (struct arb_vshader_private const*,struct wined3d_shader_reg_maps const*,struct wined3d_gl_info const*) ; 

__attribute__((used)) static unsigned int FUNC2(const struct arb_vshader_private *shader_data,
        const struct wined3d_shader_reg_maps *reg_maps, const struct wined3d_gl_info *gl_info)
{
    unsigned int ret = 1;
    /* We use one PARAM for the pos fixup, and in some cases one to load
     * some immediate values into the shader. */
    if (FUNC0(shader_data, reg_maps, gl_info)) ++ret;
    if (FUNC1(shader_data, reg_maps, gl_info)) ++ret;
    return ret;
}