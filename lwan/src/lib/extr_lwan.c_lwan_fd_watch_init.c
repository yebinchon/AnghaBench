
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan {scalar_t__ epfd; } ;


 int EPOLL_CLOEXEC ;
 scalar_t__ epoll_create1 (int ) ;
 int lwan_status_critical_perror (char*) ;

__attribute__((used)) static void lwan_fd_watch_init(struct lwan *l)
{
    l->epfd = epoll_create1(EPOLL_CLOEXEC);
    if (l->epfd < 0)
        lwan_status_critical_perror("epoll_create1");
}
