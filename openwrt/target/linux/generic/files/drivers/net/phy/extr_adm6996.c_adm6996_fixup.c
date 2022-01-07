
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int addr; struct mii_bus* bus; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
struct mii_bus {int (* read ) (struct mii_bus*,int ) ;} ;


 int ADM_SIG0 ;
 int ADM_SIG0_MASK ;
 int ADM_SIG0_VAL ;
 int ADM_SIG1 ;
 int ADM_SIG1_MASK ;
 int ADM_SIG1_VAL ;
 int PHYADDR (int ) ;
 int stub1 (struct mii_bus*,int ) ;
 int stub2 (struct mii_bus*,int ) ;

__attribute__((used)) static int adm6996_fixup(struct phy_device *dev)
{
 struct mii_bus *bus = dev->mdio.bus;
 u16 reg;


 if (dev->mdio.addr > 10)
  return 0;


 reg = bus->read(bus, PHYADDR(ADM_SIG0)) & ADM_SIG0_MASK;
 if (reg != ADM_SIG0_VAL)
  return 0;

 reg = bus->read(bus, PHYADDR(ADM_SIG1)) & ADM_SIG1_MASK;
 if (reg != ADM_SIG1_VAL)
  return 0;

 dev->phy_id = (ADM_SIG0_VAL << 16) | ADM_SIG1_VAL;

 return 0;
}
