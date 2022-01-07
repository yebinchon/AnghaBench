
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo_x11_state {int * wakeup_pipe; int event_fd; } ;
struct vo {struct vo_x11_state* x11; } ;
struct pollfd {int events; int revents; int fd; } ;
typedef int int64_t ;


 int MPCLAMP (int,int ,int) ;
 int POLLIN ;
 int mp_flush_wakeup_pipe (int ) ;
 int mp_time_us () ;
 int poll (struct pollfd*,int,int) ;

void vo_x11_wait_events(struct vo *vo, int64_t until_time_us)
{
    struct vo_x11_state *x11 = vo->x11;

    struct pollfd fds[2] = {
        { .fd = x11->event_fd, .events = POLLIN },
        { .fd = x11->wakeup_pipe[0], .events = POLLIN },
    };
    int64_t wait_us = until_time_us - mp_time_us();
    int timeout_ms = MPCLAMP((wait_us + 999) / 1000, 0, 10000);

    poll(fds, 2, timeout_ms);

    if (fds[1].revents & POLLIN)
        mp_flush_wakeup_pipe(x11->wakeup_pipe[0]);
}
