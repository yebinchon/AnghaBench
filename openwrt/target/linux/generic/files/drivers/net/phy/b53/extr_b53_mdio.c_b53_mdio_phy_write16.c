
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mii_bus {int dummy; } ;
struct b53_device {struct mii_bus* priv; } ;


 int mdiobus_write (struct mii_bus*,int,int ,int ) ;

__attribute__((used)) static int b53_mdio_phy_write16(struct b53_device *dev, int addr, u8 reg,
    u16 value)
{
 struct mii_bus *bus = dev->priv;

 return mdiobus_write(bus, addr, reg, value);
}
