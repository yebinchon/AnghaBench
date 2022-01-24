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
struct wined3d_texture {struct wined3d_swapchain* swapchain; } ;
struct wined3d_swapchain {struct wined3d_texture* front_buffer; struct wined3d_texture** back_buffers; } ;
struct wined3d_device {struct wined3d_swapchain** swapchains; int /*<<< orphan*/  cs; } ;
struct TYPE_2__ {unsigned int sub_resource_idx; struct wined3d_texture* texture; } ;
struct wined3d_context {struct wined3d_device const* device; TYPE_1__ current_rt; scalar_t__ destroyed; } ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,struct wined3d_texture*,unsigned int) ; 
 struct wined3d_context* FUNC2 () ; 
 struct wined3d_context* FUNC3 (struct wined3d_swapchain*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

struct wined3d_context *FUNC5(const struct wined3d_device *device,
        struct wined3d_texture *texture, unsigned int sub_resource_idx)
{
    struct wined3d_context *current_context = FUNC2();
    struct wined3d_context *context;
    BOOL swapchain_texture;

    FUNC0("device %p, texture %p, sub_resource_idx %u.\n", device, texture, sub_resource_idx);

    FUNC4(device->cs);

    if (current_context && current_context->destroyed)
        current_context = NULL;

    swapchain_texture = texture && texture->swapchain;
    if (!texture)
    {
        if (current_context
                && current_context->current_rt.texture
                && current_context->device == device)
        {
            texture = current_context->current_rt.texture;
            sub_resource_idx = current_context->current_rt.sub_resource_idx;
        }
        else
        {
            struct wined3d_swapchain *swapchain = device->swapchains[0];

            if (swapchain->back_buffers)
                texture = swapchain->back_buffers[0];
            else
                texture = swapchain->front_buffer;
            sub_resource_idx = 0;
        }
    }

    if (current_context && current_context->current_rt.texture == texture)
    {
        context = current_context;
    }
    else if (swapchain_texture)
    {
        FUNC0("Rendering onscreen.\n");

        context = FUNC3(texture->swapchain);
    }
    else
    {
        FUNC0("Rendering offscreen.\n");

        /* Stay with the current context if possible. Otherwise use the
         * context for the primary swapchain. */
        if (current_context && current_context->device == device)
            context = current_context;
        else
            context = FUNC3(device->swapchains[0]);
    }

    FUNC1(context, texture, sub_resource_idx);

    return context;
}