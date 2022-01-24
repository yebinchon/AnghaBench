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
 scalar_t__ FUNC1 (struct wined3d_gl_info const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_string_buffer*,char*,...) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct wined3d_gl_info const*) ; 
 int FUNC5 (int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC6(const struct wined3d_gl_info *gl_info,
        struct wined3d_string_buffer *buffer, unsigned int element_count, BOOL rasterizer_setup,
        const DWORD *interpolation_mode)
{
    enum wined3d_shader_interpolation_mode mode;
    unsigned int i;

    if (FUNC4(gl_info))
    {
        if (rasterizer_setup)
        {
            FUNC2(buffer, "out shader_in_out {\n");
            for (i = 0; i < element_count; ++i)
            {
                const char *interpolation_qualifiers = "";
                if (FUNC1(gl_info))
                {
                    mode = FUNC5(interpolation_mode, i);
                    interpolation_qualifiers = FUNC3(mode);
                }
                FUNC2(buffer, "%s vec4 reg%u;\n", interpolation_qualifiers, i);
            }
            FUNC2(buffer, "} shader_out;\n");
        }
        else
        {
            FUNC2(buffer, "out shader_in_out { vec4 reg[%u]; } shader_out;\n", element_count);
        }
    }
    else
    {
        FUNC0(gl_info, buffer, FALSE, "vec4 ps_link[%u];\n", element_count);
    }
}