
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int buffersize; int latency; int buffered; int outburst; } ;
struct ao {struct priv* priv; } ;


 int drain (struct ao*) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *priv = ao->priv;

    drain(ao);
    int samples = priv->buffersize - priv->latency - priv->buffered;
    return samples / priv->outburst * priv->outburst;
}
