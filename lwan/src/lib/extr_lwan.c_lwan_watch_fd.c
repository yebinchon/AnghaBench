
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lwan_fd_watch {int fd; int coro; } ;
struct lwan {int epfd; int switcher; } ;
struct TYPE_2__ {int ptr; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int coro_function_t ;


 int EPOLL_CTL_ADD ;
 int coro_free (int ) ;
 int coro_new (int *,int ,void*) ;
 scalar_t__ epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int free (struct lwan_fd_watch*) ;
 struct lwan_fd_watch* malloc (int) ;

struct lwan_fd_watch *lwan_watch_fd(struct lwan *l,
                                    int fd,
                                    uint32_t events,
                                    coro_function_t coro_fn,
                                    void *data)
{
    struct lwan_fd_watch *watch;

    watch = malloc(sizeof(*watch));
    if (!watch)
        return ((void*)0);

    watch->coro = coro_new(&l->switcher, coro_fn, data);
    if (!watch->coro)
        goto out;

    struct epoll_event ev = {.events = events, .data.ptr = watch->coro};
    if (epoll_ctl(l->epfd, EPOLL_CTL_ADD, fd, &ev) < 0) {
        coro_free(watch->coro);
        goto out;
    }

    watch->fd = fd;
    return watch;

out:
    free(watch);
    return ((void*)0);
}
