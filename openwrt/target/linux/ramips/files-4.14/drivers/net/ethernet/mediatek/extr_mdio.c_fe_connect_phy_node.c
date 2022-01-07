
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct phy_device {int no_auto_carrier_off; TYPE_2__* drv; int phy_id; TYPE_1__ mdio; int supported; int advertising; } ;
struct fe_priv {scalar_t__* link; TYPE_3__* phy; int dev; int netdev; } ;
struct device_node {int name; } ;
typedef int __be32 ;
struct TYPE_6__ {struct phy_device** phy; int ** phy_node; } ;
struct TYPE_5__ {int name; } ;


 int EINVAL ;
 int ENODEV ;
 int PHY_GBIT_FEATURES ;
 int be32_to_cpu (int const) ;
 int dev_err (int ,char*,...) ;
 int dev_info (int ,char*,int,int ,int ,int ) ;
 int dev_name (int *) ;
 int fe_phy_link_adjust ;
 int of_get_phy_mode (struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct phy_device* of_phy_connect (int ,struct device_node*,int ,int ,int) ;
 int pr_err (char*,int ) ;

int fe_connect_phy_node(struct fe_priv *priv, struct device_node *phy_node, int port)
{
 const __be32 *_phy_addr = ((void*)0);
 struct phy_device *phydev;
 int phy_mode;

 _phy_addr = of_get_property(phy_node, "reg", ((void*)0));

 if (!_phy_addr || (be32_to_cpu(*_phy_addr) >= 0x20)) {
  pr_err("%s: invalid phy id\n", phy_node->name);
  return -EINVAL;
 }

 phy_mode = of_get_phy_mode(phy_node);
 if (phy_mode < 0) {
  dev_err(priv->dev, "incorrect phy-mode %d\n", phy_mode);
  priv->phy->phy_node[port] = ((void*)0);
  return -EINVAL;
 }

 phydev = of_phy_connect(priv->netdev, phy_node, fe_phy_link_adjust,
    0, phy_mode);
 if (!phydev) {
  dev_err(priv->dev, "could not connect to PHY\n");
  priv->phy->phy_node[port] = ((void*)0);
  return -ENODEV;
 }

 phydev->supported &= PHY_GBIT_FEATURES;
 phydev->advertising = phydev->supported;
 phydev->no_auto_carrier_off = 1;

 dev_info(priv->dev,
   "connected port %d to PHY at %s [uid=%08x, driver=%s]\n",
   port, dev_name(&phydev->mdio.dev), phydev->phy_id,
   phydev->drv->name);

 priv->phy->phy[port] = phydev;
 priv->link[port] = 0;

 return 0;
}
