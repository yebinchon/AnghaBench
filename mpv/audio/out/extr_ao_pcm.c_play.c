
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int data_length; int fp; } ;
struct ao {int sstride; struct priv* priv; } ;


 int fwrite (void*,int,int,int ) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    int len = samples * ao->sstride;

    fwrite(data[0], len, 1, priv->fp);
    priv->data_length += len;
    return samples;
}
