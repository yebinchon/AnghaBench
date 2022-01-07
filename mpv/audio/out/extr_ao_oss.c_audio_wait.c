
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_fd; } ;
struct pollfd {int revents; int events; int fd; } ;
struct ao {struct priv* priv; } ;
typedef int pthread_mutex_t ;


 int POLLERR ;
 int POLLNVAL ;
 int POLLOUT ;
 int ao_wait_poll (struct ao*,struct pollfd*,int,int *) ;

__attribute__((used)) static int audio_wait(struct ao *ao, pthread_mutex_t *lock)
{
    struct priv *p = ao->priv;

    struct pollfd fd = {.fd = p->audio_fd, .events = POLLOUT};
    int r = ao_wait_poll(ao, &fd, 1, lock);
    if (fd.revents & (POLLERR | POLLNVAL))
        return -1;
    return r;
}
