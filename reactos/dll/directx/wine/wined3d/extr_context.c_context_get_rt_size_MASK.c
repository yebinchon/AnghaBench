#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct wined3d_texture {unsigned int level_count; scalar_t__ swapchain; } ;
struct TYPE_6__ {unsigned int sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {TYPE_1__ current_rt; int /*<<< orphan*/  win_handle; } ;
struct TYPE_8__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
struct TYPE_7__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef  TYPE_2__ SIZE ;
typedef  TYPE_3__ RECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC1 (struct wined3d_texture const*,unsigned int) ; 
 scalar_t__ FUNC2 (struct wined3d_texture const*,unsigned int) ; 

__attribute__((used)) static void FUNC3(const struct wined3d_context *context, SIZE *size)
{
    const struct wined3d_texture *rt = context->current_rt.texture;
    unsigned int level;

    if (rt->swapchain)
    {
        RECT window_size;

        FUNC0(context->win_handle, &window_size);
        size->cx = window_size.right - window_size.left;
        size->cy = window_size.bottom - window_size.top;

        return;
    }

    level = context->current_rt.sub_resource_idx % rt->level_count;
    size->cx = FUNC2(rt, level);
    size->cy = FUNC1(rt, level);
}