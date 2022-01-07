
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int audio_fd; } ;
struct pollfd {int events; int fd; } ;
struct ao {struct priv* priv; } ;


 int POLLOUT ;
 int poll (struct pollfd*,int,int ) ;

__attribute__((used)) static int device_writable(struct ao *ao)
{
    struct priv *p = ao->priv;
    struct pollfd fd = {.fd = p->audio_fd, .events = POLLOUT};
    return poll(&fd, 1, 0);
}
