
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pfd; int hdl; } ;
struct ao {struct priv* priv; } ;


 scalar_t__ EINTR ;
 int POLLOUT ;
 scalar_t__ errno ;
 scalar_t__ poll (int ,int,int ) ;
 int sio_pollfd (int ,int ,int ) ;
 int sio_revents (int ,int ) ;

__attribute__((used)) static void update(struct ao *ao)
{
    struct priv *p = ao->priv;
    int n = sio_pollfd(p->hdl, p->pfd, POLLOUT);
    while (poll(p->pfd, n, 0) < 0 && errno == EINTR) {}
    sio_revents(p->hdl, p->pfd);
}
