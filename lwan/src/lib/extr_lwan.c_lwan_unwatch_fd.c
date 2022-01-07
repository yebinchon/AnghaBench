
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_fd_watch {scalar_t__ fd; int coro; } ;
struct lwan {scalar_t__ main_socket; int epfd; } ;


 int EPOLL_CTL_DEL ;
 int coro_free (int ) ;
 scalar_t__ epoll_ctl (int ,int ,scalar_t__,int *) ;
 int free (struct lwan_fd_watch*) ;
 int lwan_status_perror (char*,scalar_t__) ;

void lwan_unwatch_fd(struct lwan *l, struct lwan_fd_watch *w)
{
    if (l->main_socket != w->fd) {
        if (epoll_ctl(l->epfd, EPOLL_CTL_DEL, w->fd, ((void*)0)) < 0)
            lwan_status_perror("Could not unwatch fd %d", w->fd);
    }

    coro_free(w->coro);
    free(w);
}
