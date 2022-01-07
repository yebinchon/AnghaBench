
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {double buffered; double latency; double outburst; scalar_t__ broken_delay; scalar_t__ broken_eof; } ;
struct ao {double samplerate; struct priv* priv; } ;


 int drain (struct ao*) ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct priv *priv = ao->priv;

    drain(ao);



    double delay = priv->buffered;



    if (priv->broken_eof && priv->buffered < priv->latency)
        delay = priv->latency;

    delay /= ao->samplerate;

    if (priv->broken_delay) {
        double q = priv->outburst / (double)ao->samplerate;
        if (delay > 0)
            delay = (int)(delay / q) * q;
    }

    return delay;
}
