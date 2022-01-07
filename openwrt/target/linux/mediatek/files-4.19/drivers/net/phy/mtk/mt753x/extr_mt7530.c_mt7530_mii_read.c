
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int phy_base; int host_bus; } ;


 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int mdiobus_read (int ,int,int) ;

__attribute__((used)) static int mt7530_mii_read(struct gsw_mt753x *gsw, int phy, int reg)
{
 if (phy < MT753X_NUM_PHYS)
  phy = (gsw->phy_base + phy) & MT753X_SMI_ADDR_MASK;

 return mdiobus_read(gsw->host_bus, phy, reg);
}
