
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct phy_device {int supported; int advertising; scalar_t__ duplex; scalar_t__ speed; int autoneg; TYPE_1__ mdio; } ;
struct fe_priv {int netdev; } ;


 int ADVERTISED_Autoneg ;
 int AUTONEG_ENABLE ;
 int CONFIG_NET_MEDIATEK_MDIO_MT7620 ;
 scalar_t__ IS_ENABLED (int ) ;
 int PHY_BASIC_FEATURES ;
 int PHY_GBIT_FEATURES ;
 int PHY_INTERFACE_MODE_MII ;
 int dev_name (int *) ;
 int phy_attach (int ,int ,int ) ;
 int phy_start_aneg (struct phy_device*) ;

__attribute__((used)) static void phy_init(struct fe_priv *priv, struct phy_device *phy)
{
 phy_attach(priv->netdev, dev_name(&phy->mdio.dev), PHY_INTERFACE_MODE_MII);

 phy->autoneg = AUTONEG_ENABLE;
 phy->speed = 0;
 phy->duplex = 0;
 phy->supported &= IS_ENABLED(CONFIG_NET_MEDIATEK_MDIO_MT7620) ?
   PHY_GBIT_FEATURES : PHY_BASIC_FEATURES;
 phy->advertising = phy->supported | ADVERTISED_Autoneg;

 phy_start_aneg(phy);
}
