
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct timeout_queue {int timeout; } ;
struct lwan_thread {int wheel; int pending_fds; } ;
struct lwan_connection {int dummy; } ;
struct TYPE_2__ {struct lwan_connection* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;
struct coro_switcher {int dummy; } ;
typedef int event ;


 int CONN_EVENTS_READ ;
 int EPOLL_CTL_ADD ;
 scalar_t__ LIKELY (int) ;
 int conn_flags_to_epoll_events (int ) ;
 int epoll_ctl (int,int ,int,struct epoll_event*) ;
 int read (int,int *,int) ;
 int spawn_coro (struct lwan_connection*,struct coro_switcher*,struct timeout_queue*) ;
 scalar_t__ spsc_queue_pop (int *,int*) ;
 int timeouts_add (int ,int *,int) ;

__attribute__((used)) static void accept_nudge(int pipe_fd,
                         struct lwan_thread *t,
                         struct lwan_connection *conns,
                         struct timeout_queue *tq,
                         struct coro_switcher *switcher,
                         int epoll_fd)
{
    uint64_t event;
    int new_fd;




    (void)read(pipe_fd, &event, sizeof(event));

    while (spsc_queue_pop(&t->pending_fds, &new_fd)) {
        struct lwan_connection *conn = &conns[new_fd];
        struct epoll_event ev = {
            .data.ptr = conn,
            .events = conn_flags_to_epoll_events(CONN_EVENTS_READ),
        };

        if (LIKELY(!epoll_ctl(epoll_fd, EPOLL_CTL_ADD, new_fd, &ev)))
            spawn_coro(conn, switcher, tq);
    }

    timeouts_add(t->wheel, &tq->timeout, 1000);
}
