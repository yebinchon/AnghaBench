
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mii_bus {struct ag71xx_mdio* priv; } ;
struct ag71xx_mdio {int mii_regmap; } ;


 int AG71XX_REG_MII_ADDR ;
 int AG71XX_REG_MII_CTRL ;
 int DBG (char*,int,int,int) ;
 int MII_ADDR_SHIFT ;
 int ag71xx_mdio_wait_busy (struct ag71xx_mdio*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ag71xx_mdio_mii_write(struct mii_bus *bus, int addr, int reg, u16 val)
{
 struct ag71xx_mdio *am = bus->priv;

 DBG("mii_write: addr=%04x, reg=%04x, value=%04x\n", addr, reg, val);

 regmap_write(am->mii_regmap, AG71XX_REG_MII_ADDR,
   ((addr & 0xff) << MII_ADDR_SHIFT) | (reg & 0xff));
 regmap_write(am->mii_regmap, AG71XX_REG_MII_CTRL, val);

 ag71xx_mdio_wait_busy(am);

 return 0;
}
