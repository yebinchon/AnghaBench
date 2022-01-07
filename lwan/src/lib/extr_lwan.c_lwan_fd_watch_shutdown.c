
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan {int epfd; } ;


 int close (int ) ;

__attribute__((used)) static void lwan_fd_watch_shutdown(struct lwan *l)
{
    close(l->epfd);
}
