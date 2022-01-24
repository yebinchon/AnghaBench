#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* format; } ;
struct wined3d_texture {TYPE_2__ resource; scalar_t__ swapchain; } ;
struct wined3d_context {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ WINED3DFMT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*) ; 

__attribute__((used)) static DWORD FUNC3(const struct wined3d_context *context, struct wined3d_texture *rt)
{
    if (!rt || rt->resource.format->id == WINED3DFMT_NULL)
        return 0;
    else if (rt->swapchain)
        return FUNC1(&rt->resource);
    else
        return FUNC0(FUNC2(context));
}