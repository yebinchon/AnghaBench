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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_version {int dummy; } ;
struct wined3d_shader_dst_param {int write_mask; int /*<<< orphan*/  reg; } ;
typedef  int DWORD ;

/* Variables and functions */
 int WINED3DSP_WRITEMASK_0 ; 
 int WINED3DSP_WRITEMASK_1 ; 
 int WINED3DSP_WRITEMASK_2 ; 
 int WINED3DSP_WRITEMASK_3 ; 
 int WINED3DSP_WRITEMASK_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,int /*<<< orphan*/ *,struct wined3d_shader_version const*) ; 

__attribute__((used)) static void FUNC2(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_dst_param *param, const struct wined3d_shader_version *shader_version)
{
    DWORD write_mask = param->write_mask;

    FUNC1(buffer, &param->reg, shader_version);

    if (write_mask && write_mask != WINED3DSP_WRITEMASK_ALL)
    {
        static const char write_mask_chars[] = "xyzw";

        FUNC0(buffer, ".");
        if (write_mask & WINED3DSP_WRITEMASK_0)
            FUNC0(buffer, "%c", write_mask_chars[0]);
        if (write_mask & WINED3DSP_WRITEMASK_1)
            FUNC0(buffer, "%c", write_mask_chars[1]);
        if (write_mask & WINED3DSP_WRITEMASK_2)
            FUNC0(buffer, "%c", write_mask_chars[2]);
        if (write_mask & WINED3DSP_WRITEMASK_3)
            FUNC0(buffer, "%c", write_mask_chars[3]);
    }
}