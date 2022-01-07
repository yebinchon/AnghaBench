
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int rd; } ;
struct ao {int sstride; struct priv* priv; } ;


 int rsd_write (int ,void*,int) ;

__attribute__((used)) static int play(struct ao *ao, void **data, int samples, int flags)
{
    struct priv *priv = ao->priv;
    return rsd_write(priv->rd, data[0], samples * ao->sstride) / ao->sstride;
}
