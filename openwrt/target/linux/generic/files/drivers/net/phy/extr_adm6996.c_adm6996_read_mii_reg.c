
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct mii_bus* bus; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int ) ;} ;
struct adm6996_priv {struct phy_device* priv; } ;
typedef enum admreg { ____Placeholder_admreg } admreg ;


 int PHYADDR (int) ;
 int stub1 (struct mii_bus*,int ) ;

__attribute__((used)) static u16
adm6996_read_mii_reg(struct adm6996_priv *priv, enum admreg reg)
{
 struct phy_device *phydev = priv->priv;
 struct mii_bus *bus = phydev->mdio.bus;

 return bus->read(bus, PHYADDR(reg));
}
