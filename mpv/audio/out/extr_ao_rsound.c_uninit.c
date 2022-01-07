
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int rd; } ;
struct ao {struct priv* priv; } ;


 int rsd_free (int ) ;
 int rsd_stop (int ) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *priv = ao->priv;

    rsd_stop(priv->rd);
    rsd_free(priv->rd);
}
