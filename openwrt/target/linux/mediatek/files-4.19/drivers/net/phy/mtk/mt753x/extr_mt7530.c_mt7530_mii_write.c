
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gsw_mt753x {int phy_base; int host_bus; } ;


 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int mdiobus_write (int ,int,int,int ) ;

__attribute__((used)) static void mt7530_mii_write(struct gsw_mt753x *gsw, int phy, int reg, u16 val)
{
 if (phy < MT753X_NUM_PHYS)
  phy = (gsw->phy_base + phy) & MT753X_SMI_ADDR_MASK;

 mdiobus_write(gsw->host_bus, phy, reg, val);
}
