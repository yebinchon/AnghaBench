
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo_wayland_state {int timeout_count; int hidden; TYPE_1__* current_output; scalar_t__ frame_wait; int display; int display_fd; } ;
struct pollfd {int events; int fd; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int refresh_rate; } ;


 int POLLIN ;
 scalar_t__ mp_time_us () ;
 int poll (struct pollfd*,int,int) ;
 int wl_display_dispatch_pending (int ) ;
 int wl_display_flush (int ) ;
 scalar_t__ wl_display_prepare_read (int ) ;
 int wl_display_read_events (int ) ;

void vo_wayland_wait_frame(struct vo_wayland_state *wl, int frame_offset)
{
    struct pollfd fds[1] = {
        {.fd = wl->display_fd, .events = POLLIN },
    };

    double vblank_time = 1e6 / wl->current_output->refresh_rate;
    int64_t finish_time = mp_time_us() + vblank_time + (int64_t)frame_offset;

    while (wl->frame_wait && finish_time > mp_time_us()) {

        while (wl_display_prepare_read(wl->display) != 0)
            wl_display_dispatch_pending(wl->display);
        wl_display_flush(wl->display);

        int poll_time = (finish_time - mp_time_us()) / 1000;
        if (poll_time < 0) {
            poll_time = 0;
        }

        poll(fds, 1, poll_time);

        wl_display_read_events(wl->display);
        wl_display_dispatch_pending(wl->display);
    }

    if (wl->frame_wait) {
        wl->timeout_count += 1;
    } else {
        wl->timeout_count = 0;
        wl->hidden = 0;
    }

    if (wl->timeout_count > wl->current_output->refresh_rate)
        wl->hidden = 1;
}
