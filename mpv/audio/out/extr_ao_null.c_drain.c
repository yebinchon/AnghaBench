
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ buffered; double last_time; double speed; int playing_final; scalar_t__ paused; } ;
struct ao {double samplerate; scalar_t__ untimed; struct priv* priv; } ;


 int MP_ERR (struct ao*,char*) ;
 double mp_time_sec () ;

__attribute__((used)) static void drain(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (ao->untimed) {
        priv->buffered = 0;
        return;
    }

    if (priv->paused)
        return;

    double now = mp_time_sec();
    if (priv->buffered > 0) {
        priv->buffered -= (now - priv->last_time) * ao->samplerate * priv->speed;
        if (priv->buffered < 0) {
            if (!priv->playing_final)
                MP_ERR(ao, "buffer underrun\n");
            priv->buffered = 0;
        }
    }
    priv->last_time = now;
}
