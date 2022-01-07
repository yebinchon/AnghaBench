
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct mii_bus* bus; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int,int) ;} ;


 int stub1 (struct mii_bus*,int,int) ;

__attribute__((used)) static inline u16
r16(struct phy_device *phydev, int addr, int reg)
{
 struct mii_bus *bus = phydev->mdio.bus;

 return bus->read(bus, addr, reg);
}
