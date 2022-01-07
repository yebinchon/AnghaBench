
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_device {int dev; } ;
struct ar8xxx_priv {scalar_t__ use_count; scalar_t__ sw_mii_bus; int dev; int list; } ;


 scalar_t__ WARN_ON (int) ;
 int ar8xxx_dev_list_lock ;
 int ar8xxx_free (struct ar8xxx_priv*) ;
 int ar8xxx_mib_stop (struct ar8xxx_priv*) ;
 struct ar8xxx_priv* dev_get_drvdata (int *) ;
 int list_del (int *) ;
 int mdiobus_unregister (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int unregister_switch (int *) ;

__attribute__((used)) static void
ar8xxx_mdiodev_remove(struct mdio_device *mdiodev)
{
 struct ar8xxx_priv *priv = dev_get_drvdata(&mdiodev->dev);

 if (WARN_ON(!priv))
  return;

 mutex_lock(&ar8xxx_dev_list_lock);

 if (--priv->use_count > 0) {
  mutex_unlock(&ar8xxx_dev_list_lock);
  return;
 }

 list_del(&priv->list);
 mutex_unlock(&ar8xxx_dev_list_lock);

 unregister_switch(&priv->dev);
 ar8xxx_mib_stop(priv);
 if(priv->sw_mii_bus)
  mdiobus_unregister(priv->sw_mii_bus);
 ar8xxx_free(priv);
}
