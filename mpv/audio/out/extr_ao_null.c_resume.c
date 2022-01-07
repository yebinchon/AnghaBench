
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int paused; int last_time; } ;
struct ao {struct priv* priv; } ;


 int drain (struct ao*) ;
 int mp_time_sec () ;

__attribute__((used)) static void resume(struct ao *ao)
{
    struct priv *priv = ao->priv;

    drain(ao);
    priv->paused = 0;
    priv->last_time = mp_time_sec();
}
