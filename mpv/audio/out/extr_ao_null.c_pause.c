
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int paused; } ;
struct ao {struct priv* priv; } ;


 int drain (struct ao*) ;

__attribute__((used)) static void pause(struct ao *ao)
{
    struct priv *priv = ao->priv;

    drain(ao);
    priv->paused = 1;
}
