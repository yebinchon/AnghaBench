
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double buffered; double speed; int paused; } ;
struct ao {double samplerate; struct priv* priv; } ;


 int drain (struct ao*) ;
 int mp_sleep_us (double) ;

__attribute__((used)) static void wait_drain(struct ao *ao)
{
    struct priv *priv = ao->priv;
    drain(ao);
    if (!priv->paused)
        mp_sleep_us(1000000.0 * priv->buffered / ao->samplerate / priv->speed);
}
