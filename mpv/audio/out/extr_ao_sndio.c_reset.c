
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int playing; int hdl; scalar_t__ delay; } ;
struct ao {struct priv* priv; } ;


 int MP_ERR (struct ao*,char*) ;
 int MP_WARN (struct ao*,char*) ;
 int sio_start (int ) ;
 int sio_stop (int ) ;

__attribute__((used)) static void reset(struct ao *ao)
{
    struct priv *p = ao->priv;

    if (p->playing) {
        MP_WARN(ao, "Blocking until remaining audio is played... (sndio design bug).\n");

        p->playing = 0;

        if (!sio_stop(p->hdl))
            MP_ERR(ao, "reset: couldn't stop\n");
        p->delay = 0;
        if (!sio_start(p->hdl))
            MP_ERR(ao, "reset: couldn't start\n");
    }
}
