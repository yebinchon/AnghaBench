
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int pfd; scalar_t__ hdl; } ;
struct ao {struct priv* priv; } ;


 int free (int ) ;
 int sio_close (scalar_t__) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (p->hdl)
        sio_close(p->hdl);

    free(p->pfd);
}
