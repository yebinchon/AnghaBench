
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gsw_mt753x {int phy_base; int mii_lock; } ;


 int MDIO_CMD_READ ;
 int MDIO_ST_C22 ;
 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int mt753x_mii_rw (struct gsw_mt753x*,int,int,int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mt753x_mii_read(struct gsw_mt753x *gsw, int phy, int reg)
{
 int val;

 if (phy < MT753X_NUM_PHYS)
  phy = (gsw->phy_base + phy) & MT753X_SMI_ADDR_MASK;

 mutex_lock(&gsw->mii_lock);
 val = mt753x_mii_rw(gsw, phy, reg, 0, MDIO_CMD_READ, MDIO_ST_C22);
 mutex_unlock(&gsw->mii_lock);

 return val;
}
