#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wined3d_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ ffp_textures; scalar_t__ ffp_blend_stages; } ;
struct wined3d_d3d_info {TYPE_1__ limits; } ;
struct wined3d_context {int fixed_function_usage_map; scalar_t__ lowest_disabled_stage; unsigned int* tex_unit_map; struct wined3d_d3d_info* d3d_info; } ;
typedef  int WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_context*,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context,
        const struct wined3d_state *state)
{
    const struct wined3d_d3d_info *d3d_info = context->d3d_info;
    unsigned int i, tex;
    WORD ffu_map;

    ffu_map = context->fixed_function_usage_map;

    if (d3d_info->limits.ffp_textures == d3d_info->limits.ffp_blend_stages
            || context->lowest_disabled_stage <= d3d_info->limits.ffp_textures)
    {
        for (i = 0; ffu_map; ffu_map >>= 1, ++i)
        {
            if (!(ffu_map & 1))
                continue;

            if (context->tex_unit_map[i] != i)
            {
                FUNC3(context, i, i);
                FUNC1(context, FUNC0(i));
                FUNC2(context, i);
            }
        }
        return;
    }

    /* Now work out the mapping */
    tex = 0;
    for (i = 0; ffu_map; ffu_map >>= 1, ++i)
    {
        if (!(ffu_map & 1))
            continue;

        if (context->tex_unit_map[i] != tex)
        {
            FUNC3(context, i, tex);
            FUNC1(context, FUNC0(i));
            FUNC2(context, i);
        }

        ++tex;
    }
}