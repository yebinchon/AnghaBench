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
struct wined3d_gl_info {int dummy; } ;
typedef  enum wined3d_shader_interpolation_mode { ____Placeholder_wined3d_shader_interpolation_mode } wined3d_shader_interpolation_mode ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_gl_info const*,struct wined3d_string_buffer*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct wined3d_gl_info const*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_gl_info *gl_info,
        struct wined3d_string_buffer *buffer, unsigned int element_count,
        const DWORD *interpolation_mode, BOOL unroll)
{
    enum wined3d_shader_interpolation_mode mode;
    unsigned int i;

    if (FUNC3(gl_info))
    {
        if (unroll)
        {
            FUNC1(buffer, "in shader_in_out {\n");
            for (i = 0; i < element_count; ++i)
            {
                mode = FUNC4(interpolation_mode, i);
                FUNC1(buffer, "%s vec4 reg%u;\n", FUNC2(mode), i);
            }
            FUNC1(buffer, "} shader_in;\n");
        }
        else
        {
            FUNC1(buffer, "in shader_in_out { vec4 reg[%u]; } shader_in;\n", element_count);
        }
    }
    else
    {
        FUNC0(gl_info, buffer, FALSE, "vec4 ps_link[%u];\n", element_count);
    }
}