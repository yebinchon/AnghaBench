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
struct wl_display {int dummy; } ;
struct vo_wayland_state {int display_fd; int* wakeup_pipe; struct wl_display* display; } ;
struct vo {int /*<<< orphan*/  input_ctx; struct vo_wayland_state* wl; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_wayland_state*,char*) ; 
 int /*<<< orphan*/  MP_KEY_CLOSE_WIN ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLNVAL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl_display*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl_display*) ; 

void FUNC10(struct vo *vo, int64_t until_time_us)
{
    struct vo_wayland_state *wl = vo->wl;
    struct wl_display *display = wl->display;

    if (wl->display_fd == -1)
        return;

    struct pollfd fds[2] = {
        {.fd = wl->display_fd,     .events = POLLIN },
        {.fd = wl->wakeup_pipe[0], .events = POLLIN },
    };

    int64_t wait_us = until_time_us - FUNC5();
    int timeout_ms = FUNC0((wait_us + 999) / 1000, 0, 10000);

    FUNC8(display);
    FUNC9(display);

    FUNC6(fds, 2, timeout_ms);

    if (fds[0].revents & (POLLERR | POLLHUP | POLLNVAL)) {
        FUNC1(wl, "Error occurred on the display fd, closing\n");
        FUNC2(wl->display_fd);
        wl->display_fd = -1;
        FUNC4(vo->input_ctx, MP_KEY_CLOSE_WIN);
    }

    if (fds[0].revents & POLLIN)
        FUNC7(display);

    if (fds[1].revents & POLLIN)
        FUNC3(wl->wakeup_pipe[0]);
}