
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_bus {struct ag71xx_mdio* priv; } ;
struct ag71xx_mdio {TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ builtin_switch; } ;


 int ag71xx_mdio_mii_read (struct ag71xx_mdio*,int,int) ;
 int ar7240sw_phy_read (struct mii_bus*,int,int) ;

__attribute__((used)) static int ag71xx_mdio_read(struct mii_bus *bus, int addr, int reg)
{
 struct ag71xx_mdio *am = bus->priv;

 if (am->pdata->builtin_switch)
  return ar7240sw_phy_read(bus, addr, reg);
 else
  return ag71xx_mdio_mii_read(am, addr, reg);
}
