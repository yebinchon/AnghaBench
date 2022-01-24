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
struct wined3d_rendertarget_view {int dummy; } ;
struct d3d8_surface {int /*<<< orphan*/  IDirect3DSurface8_iface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct d3d8_surface *surface,
        struct wined3d_rendertarget_view *rtv)
{
    if (rtv)
        FUNC0(&surface->IDirect3DSurface8_iface);
}