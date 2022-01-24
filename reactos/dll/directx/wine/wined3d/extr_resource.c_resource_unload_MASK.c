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
struct wined3d_resource {scalar_t__ map_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_resource*) ; 

void FUNC1(struct wined3d_resource *resource)
{
    if (resource->map_count)
        FUNC0("Resource %p is being unloaded while mapped.\n", resource);
}