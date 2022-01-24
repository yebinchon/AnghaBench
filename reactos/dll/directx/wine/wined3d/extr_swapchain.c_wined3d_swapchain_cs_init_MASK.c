#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ auto_depth_stencil_format; int /*<<< orphan*/  enable_auto_depth_stencil; } ;
struct wined3d_swapchain {int num_contexts; int /*<<< orphan*/ * context; TYPE_5__* ds_format; TYPE_3__ desc; int /*<<< orphan*/  front_buffer; TYPE_2__* device; } ;
struct wined3d_gl_info {int dummy; } ;
typedef  enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;
struct TYPE_11__ {scalar_t__ id; } ;
struct TYPE_10__ {scalar_t__ offscreen_rendering_mode; } ;
struct TYPE_8__ {TYPE_1__* adapter; } ;
struct TYPE_7__ {struct wined3d_gl_info gl_info; } ;

/* Variables and functions */
 unsigned int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ ORM_FBO ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
#define  WINED3DFMT_D16_UNORM 132 
#define  WINED3DFMT_D24_UNORM_S8_UINT 131 
#define  WINED3DFMT_D32_UNORM 130 
#define  WINED3DFMT_R24_UNORM_X8_TYPELESS 129 
#define  WINED3DFMT_S1_UINT_D15_UNORM 128 
 int /*<<< orphan*/  WINED3DUSAGE_DEPTHSTENCIL ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_swapchain*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 TYPE_5__* FUNC7 (struct wined3d_gl_info const*,int const,int /*<<< orphan*/ ) ; 
 TYPE_4__ wined3d_settings ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_swapchain*) ; 

__attribute__((used)) static void FUNC9(void *object)
{
    struct wined3d_swapchain *swapchain = object;
    const struct wined3d_gl_info *gl_info;
    unsigned int i;

    static const enum wined3d_format_id formats[] =
    {
        WINED3DFMT_D24_UNORM_S8_UINT,
        WINED3DFMT_D32_UNORM,
        WINED3DFMT_R24_UNORM_X8_TYPELESS,
        WINED3DFMT_D16_UNORM,
        WINED3DFMT_S1_UINT_D15_UNORM,
    };

    gl_info = &swapchain->device->adapter->gl_info;

    /* Without ORM_FBO, switching the depth/stencil format is hard. Always
     * request a depth/stencil buffer in the likely case it's needed later. */
    for (i = 0; i < FUNC0(formats); ++i)
    {
        swapchain->ds_format = FUNC7(gl_info, formats[i], WINED3DUSAGE_DEPTHSTENCIL);
        if ((swapchain->context[0] = FUNC4(swapchain, swapchain->front_buffer, swapchain->ds_format)))
            break;
        FUNC2("Depth stencil format %s is not supported, trying next format.\n", FUNC6(formats[i]));
    }

    if (!swapchain->context[0])
    {
        FUNC3("Failed to create context.\n");
        return;
    }
    swapchain->num_contexts = 1;

    if (wined3d_settings.offscreen_rendering_mode != ORM_FBO
            && (!swapchain->desc.enable_auto_depth_stencil
            || swapchain->desc.auto_depth_stencil_format != swapchain->ds_format->id))
        FUNC1("Add OpenGL context recreation support.\n");

    FUNC5(swapchain->context[0]);

    FUNC8(swapchain);
}