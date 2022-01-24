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
struct TYPE_2__ {int swap_interval; } ;
struct wined3d_swapchain {TYPE_1__ desc; int /*<<< orphan*/  front_buffer; int /*<<< orphan*/  device; } ;
struct wined3d_gl_info {scalar_t__* supported; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,struct wined3d_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t WGL_EXT_SWAP_CONTROL ; 
#define  WINED3DPRESENT_INTERVAL_DEFAULT 133 
#define  WINED3DPRESENT_INTERVAL_FOUR 132 
#define  WINED3DPRESENT_INTERVAL_IMMEDIATE 131 
#define  WINED3DPRESENT_INTERVAL_ONE 130 
#define  WINED3DPRESENT_INTERVAL_THREE 129 
#define  WINED3DPRESENT_INTERVAL_TWO 128 
 struct wined3d_context* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_context*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(void *object)
{
    struct wined3d_swapchain *swapchain = object;
    const struct wined3d_gl_info *gl_info;
    struct wined3d_context *context;
    int swap_interval;

    context = FUNC4(swapchain->device, swapchain->front_buffer, 0);
    gl_info = context->gl_info;

    switch (swapchain->desc.swap_interval)
    {
        case WINED3DPRESENT_INTERVAL_IMMEDIATE:
            swap_interval = 0;
            break;
        case WINED3DPRESENT_INTERVAL_DEFAULT:
        case WINED3DPRESENT_INTERVAL_ONE:
            swap_interval = 1;
            break;
        case WINED3DPRESENT_INTERVAL_TWO:
            swap_interval = 2;
            break;
        case WINED3DPRESENT_INTERVAL_THREE:
            swap_interval = 3;
            break;
        case WINED3DPRESENT_INTERVAL_FOUR:
            swap_interval = 4;
            break;
        default:
            FUNC1("Unhandled present interval %#x.\n", swapchain->desc.swap_interval);
            swap_interval = 1;
    }

    if (gl_info->supported[WGL_EXT_SWAP_CONTROL])
    {
        if (!FUNC2(FUNC6(swap_interval)))
            FUNC0("wglSwapIntervalEXT failed to set swap interval %d for context %p, last error %#x\n",
                swap_interval, context, FUNC3());
    }

    FUNC5(context);
}