
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {scalar_t__ cfg_latency_hacks; } ;
struct ao {struct priv* priv; } ;


 double get_delay_hackfixed (struct ao*) ;
 double get_delay_pulse (struct ao*) ;

__attribute__((used)) static double get_delay(struct ao *ao)
{
    struct priv *priv = ao->priv;
    if (priv->cfg_latency_hacks) {
        return get_delay_hackfixed(ao);
    } else {
        return get_delay_pulse(ao);
    }
}
