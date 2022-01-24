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
struct wl_data_offer {int dummy; } ;
struct wl_data_device {int dummy; } ;
struct vo_wayland_state {struct wl_data_offer* dnd_offer; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_offer_listener ; 
 int /*<<< orphan*/  FUNC0 (struct wl_data_offer*,int /*<<< orphan*/ *,struct vo_wayland_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct wl_data_offer*) ; 

__attribute__((used)) static void FUNC2(void *data, struct wl_data_device *wl_ddev,
                                          struct wl_data_offer *id)
{
    struct vo_wayland_state *wl = data;
    if (wl->dnd_offer)
        FUNC1(wl->dnd_offer);

    wl->dnd_offer = id;
    FUNC0(id, &data_offer_listener, wl);
}