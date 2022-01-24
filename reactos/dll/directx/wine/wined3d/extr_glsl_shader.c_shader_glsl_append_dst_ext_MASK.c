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
struct wined3d_shader_instruction {int dummy; } ;
struct wined3d_shader_dst_param {size_t shift; } ;
struct glsl_dst_param {int /*<<< orphan*/  mask_str; int /*<<< orphan*/  reg_name; } ;
typedef  enum wined3d_data_type { ____Placeholder_wined3d_data_type } wined3d_data_type ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3D_DATA_FLOAT 132 
#define  WINED3D_DATA_INT 131 
#define  WINED3D_DATA_RESOURCE 130 
#define  WINED3D_DATA_SAMPLER 129 
#define  WINED3D_DATA_UINT 128 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,struct glsl_dst_param*) ; 
 int /*<<< orphan*/ * shift_glsl_tab ; 

__attribute__((used)) static DWORD FUNC3(struct wined3d_string_buffer *buffer,
        const struct wined3d_shader_instruction *ins, const struct wined3d_shader_dst_param *dst,
        enum wined3d_data_type data_type)
{
    struct glsl_dst_param glsl_dst;
    DWORD mask;

    if ((mask = FUNC2(ins, dst, &glsl_dst)))
    {
        switch (data_type)
        {
            case WINED3D_DATA_FLOAT:
                FUNC1(buffer, "%s%s = %s(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            case WINED3D_DATA_INT:
                FUNC1(buffer, "%s%s = %sintBitsToFloat(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            case WINED3D_DATA_RESOURCE:
            case WINED3D_DATA_SAMPLER:
            case WINED3D_DATA_UINT:
                FUNC1(buffer, "%s%s = %suintBitsToFloat(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
            default:
                FUNC0("Unhandled data type %#x.\n", data_type);
                FUNC1(buffer, "%s%s = %s(",
                        glsl_dst.reg_name, glsl_dst.mask_str, shift_glsl_tab[dst->shift]);
                break;
        }
    }

    return mask;
}