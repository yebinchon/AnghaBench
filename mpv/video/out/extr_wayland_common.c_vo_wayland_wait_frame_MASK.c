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
struct vo_wayland_state {int timeout_count; int hidden; TYPE_1__* current_output; scalar_t__ frame_wait; int /*<<< orphan*/  display; int /*<<< orphan*/  display_fd; } ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  scalar_t__ int64_t ;
struct TYPE_2__ {int refresh_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLLIN ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct vo_wayland_state *wl, int frame_offset)
{
    struct pollfd fds[1] = {
        {.fd = wl->display_fd,     .events = POLLIN },
    };

    double vblank_time = 1e6 / wl->current_output->refresh_rate;
    int64_t finish_time = FUNC0() + vblank_time + (int64_t)frame_offset;

    while (wl->frame_wait && finish_time > FUNC0()) {

        while (FUNC4(wl->display) != 0)
            FUNC2(wl->display);
        FUNC3(wl->display);

        int poll_time = (finish_time - FUNC0()) / 1000;
        if (poll_time < 0) {
            poll_time = 0;
        }

        FUNC1(fds, 1, poll_time);

        FUNC5(wl->display);
        FUNC2(wl->display);
    }

    if (wl->frame_wait) {
        wl->timeout_count += 1;
    } else {
        wl->timeout_count = 0;
        wl->hidden = false;
    }
    
    if (wl->timeout_count > wl->current_output->refresh_rate)
        wl->hidden = true;
}