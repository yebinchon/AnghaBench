
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct mii_bus* bus; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int ) ;} ;


 int PHYADDR (int ) ;
 int PSB6970_CI0 ;
 int PSB6970_CI0_MASK ;
 int PSB6970_CI1 ;
 int PSB6970_CI1_MASK ;
 int PSB6970_CI1_VAL ;
 int stub1 (struct mii_bus*,int ) ;
 int stub2 (struct mii_bus*,int ) ;

__attribute__((used)) static int psb6970_fixup(struct phy_device *dev)
{
 struct mii_bus *bus = dev->mdio.bus;
 u16 reg;


 reg = bus->read(bus, PHYADDR(PSB6970_CI1)) & PSB6970_CI1_MASK;
 if (reg != PSB6970_CI1_VAL)
  return 0;

 dev->phy_id = (reg << 16);
 dev->phy_id |= bus->read(bus, PHYADDR(PSB6970_CI0)) & PSB6970_CI0_MASK;

 return 0;
}
