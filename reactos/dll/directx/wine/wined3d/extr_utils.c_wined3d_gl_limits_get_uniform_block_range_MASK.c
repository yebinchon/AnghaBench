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
struct wined3d_gl_limits {unsigned int* uniform_blocks; } ;
typedef  enum wined3d_shader_type { ____Placeholder_wined3d_shader_type } wined3d_shader_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 unsigned int WINED3D_SHADER_TYPE_COUNT ; 

void FUNC1(const struct wined3d_gl_limits *gl_limits,
        enum wined3d_shader_type shader_type, unsigned int *base, unsigned int *count)
{
    unsigned int i;

    *base = 0;
    for (i = 0; i < WINED3D_SHADER_TYPE_COUNT; ++i)
    {
        *count = gl_limits->uniform_blocks[i];
        if (i == shader_type)
            return;
        *base += *count;
    }

    FUNC0("Unrecognized shader type %#x.\n", shader_type);
    *count = 0;
}