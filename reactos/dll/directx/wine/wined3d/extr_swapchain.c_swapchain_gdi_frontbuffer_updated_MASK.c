#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ windowed; } ;
struct wined3d_swapchain {int /*<<< orphan*/  front_buffer_update; TYPE_7__* front_buffer; TYPE_5__ desc; int /*<<< orphan*/  win_handle; int /*<<< orphan*/  dc; TYPE_4__* container; scalar_t__ palette; } ;
struct wined3d_surface {int /*<<< orphan*/  front_buffer_update; TYPE_7__* front_buffer; TYPE_5__ desc; int /*<<< orphan*/  win_handle; int /*<<< orphan*/  dc; TYPE_4__* container; scalar_t__ palette; } ;
struct TYPE_23__ {scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_22__ {scalar_t__ top; scalar_t__ left; scalar_t__ bottom; scalar_t__ right; } ;
struct TYPE_20__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_21__ {TYPE_6__ resource; TYPE_2__* sub_resources; } ;
struct TYPE_17__ {scalar_t__ map_count; } ;
struct TYPE_18__ {TYPE_3__ resource; } ;
struct TYPE_15__ {struct wined3d_swapchain* surface; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef  TYPE_8__ RECT ;
typedef  TYPE_9__ POINT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int DCX_CACHE ; 
 int DCX_CLIPSIBLINGS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_8__*,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCOPY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct wined3d_swapchain*) ; 
 struct wined3d_swapchain* FUNC9 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct wined3d_swapchain *swapchain)
{
    struct wined3d_surface *front;
    POINT offset = {0, 0};
    HDC src_dc, dst_dc;
    RECT draw_rect;
    HWND window;

    FUNC8("swapchain %p.\n", swapchain);

    front = swapchain->front_buffer->sub_resources[0].u.surface;
    if (swapchain->palette)
        FUNC10(swapchain->palette, front->dc);

    if (front->container->resource.map_count)
        FUNC2("Trying to blit a mapped surface.\n");

    FUNC8("Copying surface %p to screen.\n", front);

    src_dc = front->dc;
    window = swapchain->win_handle;
    dst_dc = FUNC3(window, 0, DCX_CLIPSIBLINGS | DCX_CACHE);

    /* Front buffer coordinates are screen coordinates. Map them to the
     * destination window if not fullscreened. */
    if (swapchain->desc.windowed)
        FUNC1(window, &offset);

    FUNC8("offset %s.\n", FUNC9(&offset));

    FUNC6(&draw_rect, 0, 0, swapchain->front_buffer->resource.width,
            swapchain->front_buffer->resource.height);
    FUNC4(&draw_rect, &draw_rect, &swapchain->front_buffer_update);

    FUNC0(dst_dc, draw_rect.left - offset.x, draw_rect.top - offset.y,
            draw_rect.right - draw_rect.left, draw_rect.bottom - draw_rect.top,
            src_dc, draw_rect.left, draw_rect.top, SRCCOPY);
    FUNC5(window, dst_dc);

    FUNC7(&swapchain->front_buffer_update);
}