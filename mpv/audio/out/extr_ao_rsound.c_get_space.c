
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int rd; } ;
struct ao {int sstride; struct priv* priv; } ;


 int rsd_get_avail (int ) ;

__attribute__((used)) static int get_space(struct ao *ao)
{
    struct priv *priv = ao->priv;
    return rsd_get_avail(priv->rd) / ao->sstride;
}
