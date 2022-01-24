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
struct wined3d_resource {int /*<<< orphan*/  type; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wined3d_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_resource*) ; 

__attribute__((used)) static void FUNC3(void *object)
{
    struct wined3d_resource *resource = object;

    FUNC1(resource);
    FUNC0(resource->device, resource, resource->type);
    FUNC2(resource);
}