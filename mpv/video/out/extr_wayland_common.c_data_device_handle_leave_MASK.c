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
struct wl_data_device {int dummy; } ;
struct vo_wayland_state {int dnd_fd; scalar_t__ dnd_mime_score; int /*<<< orphan*/ * dnd_mime_type; int /*<<< orphan*/ * dnd_offer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_data_device *wl_ddev)
{
    struct vo_wayland_state *wl = data;

    if (wl->dnd_offer) {
        if (wl->dnd_fd != -1)
            return;
        FUNC2(wl->dnd_offer);
        wl->dnd_offer = NULL;
    }

    FUNC0(wl, "Releasing DND offer with mime type %s\n", wl->dnd_mime_type);

    FUNC1(wl->dnd_mime_type);
    wl->dnd_mime_type = NULL;
    wl->dnd_mime_score = 0;
}