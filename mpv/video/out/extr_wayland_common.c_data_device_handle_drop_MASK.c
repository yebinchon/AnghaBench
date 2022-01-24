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
struct vo_wayland_state {int dnd_fd; int /*<<< orphan*/  dnd_mime_type; int /*<<< orphan*/  dnd_offer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_wayland_state*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_wayland_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_CLOEXEC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void *data, struct wl_data_device *wl_ddev)
{
    struct vo_wayland_state *wl = data;

    int pipefd[2];

    if (FUNC3(pipefd, O_CLOEXEC) == -1) {
        FUNC0(wl, "Failed to create dnd pipe!\n");
        return;
    }

    FUNC1(wl, "Receiving DND offer with mime %s\n", wl->dnd_mime_type);

    FUNC4(wl->dnd_offer, wl->dnd_mime_type, pipefd[1]);
    FUNC2(pipefd[1]);

    wl->dnd_fd = pipefd[0];
}