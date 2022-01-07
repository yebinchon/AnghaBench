
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int playing_final; scalar_t__ buffered; } ;
struct ao {struct priv* priv; } ;



__attribute__((used)) static void reset(struct ao *ao)
{
    struct priv *priv = ao->priv;
    priv->buffered = 0;
    priv->playing_final = 0;
}
