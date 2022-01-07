
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int delay; int playing; int hdl; } ;
struct ao {int sstride; struct priv* priv; } ;


 int sio_write (int ,void*,int) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *p = ao->priv;
    int n;

    n = sio_write(p->hdl, data[0], samples * ao->sstride) / ao->sstride;
    p->delay += n;
    p->playing = 1;

    return n;
}
