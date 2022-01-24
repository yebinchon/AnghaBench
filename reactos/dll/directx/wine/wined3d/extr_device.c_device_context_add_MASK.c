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
struct wined3d_device {int context_count; struct wined3d_context** contexts; } ;
struct wined3d_context {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,struct wined3d_context*) ; 
 int /*<<< orphan*/  TRUE ; 
 struct wined3d_context** FUNC2 (struct wined3d_context**,int) ; 

BOOL FUNC3(struct wined3d_device *device, struct wined3d_context *context)
{
    struct wined3d_context **new_array;

    FUNC1("Adding context %p.\n", context);

    if (!(new_array = FUNC2(device->contexts, sizeof(*new_array) * (device->context_count + 1))))
    {
        FUNC0("Failed to grow the context array.\n");
        return FALSE;
    }

    new_array[device->context_count++] = context;
    device->contexts = new_array;
    return TRUE;
}