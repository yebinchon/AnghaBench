
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fe_priv {TYPE_2__* mii_bus; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int kfree (TYPE_2__*) ;
 int mdiobus_unregister (TYPE_2__*) ;
 int of_node_put (int ) ;

void fe_mdio_cleanup(struct fe_priv *priv)
{
 if (!priv->mii_bus)
  return;

 mdiobus_unregister(priv->mii_bus);
 of_node_put(priv->mii_bus->dev.of_node);
 kfree(priv->mii_bus);
}
