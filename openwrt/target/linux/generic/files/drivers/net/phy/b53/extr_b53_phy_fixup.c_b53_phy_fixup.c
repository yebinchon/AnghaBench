
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ addr; struct mii_bus* bus; } ;
struct phy_device {int phy_id; TYPE_1__ mdio; } ;
struct mii_bus {int dummy; } ;


 int B53_BRCM_OUI_1 ;
 int B53_BRCM_OUI_2 ;
 int B53_BRCM_OUI_3 ;
 scalar_t__ B53_PSEUDO_PHY ;
 int mdiobus_read (struct mii_bus*,int ,int) ;

__attribute__((used)) static int b53_phy_fixup(struct phy_device *dev)
{
 struct mii_bus *bus = dev->mdio.bus;
 u32 phy_id;

 if (dev->mdio.addr != B53_PSEUDO_PHY)
  return 0;


 phy_id = mdiobus_read(bus, 0, 2) << 16;
 phy_id |= mdiobus_read(bus, 0, 3);

 if ((phy_id & 0xfffffc00) == B53_BRCM_OUI_1 ||
     (phy_id & 0xfffffc00) == B53_BRCM_OUI_2 ||
     (phy_id & 0xfffffc00) == B53_BRCM_OUI_3) {
  dev->phy_id = phy_id;
 }

 return 0;
}
