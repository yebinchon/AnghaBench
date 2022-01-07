
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar8xxx_priv {struct ar8xxx_priv* mib_stats; struct ar8xxx_priv* chip_data; TYPE_1__* chip; } ;
struct TYPE_2__ {int (* cleanup ) (struct ar8xxx_priv*) ;} ;


 int kfree (struct ar8xxx_priv*) ;
 int stub1 (struct ar8xxx_priv*) ;

__attribute__((used)) static void
ar8xxx_free(struct ar8xxx_priv *priv)
{
 if (priv->chip && priv->chip->cleanup)
  priv->chip->cleanup(priv);

 kfree(priv->chip_data);
 kfree(priv->mib_stats);
 kfree(priv);
}
