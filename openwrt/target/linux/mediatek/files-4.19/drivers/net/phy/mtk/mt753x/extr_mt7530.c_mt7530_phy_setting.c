
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mii_read ) (struct gsw_mt753x*,int,int) ;int (* mmd_write ) (struct gsw_mt753x*,int,int ,int ,int) ;int (* mii_write ) (struct gsw_mt753x*,int,int,int) ;} ;


 int MT753X_NUM_PHYS ;
 int PHY_DEV07 ;
 int PHY_DEV07_REG_03C ;
 int PHY_DEV1E ;
 int PHY_DEV1E_REG_123 ;
 int PHY_DEV1E_REG_A6 ;
 int PHY_EN_DOWN_SHFIT ;
 int PHY_EXT_REG_14 ;
 int PHY_LPI_REG_11 ;
 int PHY_TR_REG_10 ;
 int PHY_TR_REG_12 ;
 int stub1 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub10 (struct gsw_mt753x*,int,int,int) ;
 int stub11 (struct gsw_mt753x*,int,int,int) ;
 int stub12 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub13 (struct gsw_mt753x*,int,int ,int ,int) ;
 int stub2 (struct gsw_mt753x*,int,int,int) ;
 int stub3 (struct gsw_mt753x*,int,int) ;
 int stub4 (struct gsw_mt753x*,int,int,int) ;
 int stub5 (struct gsw_mt753x*,int,int,int) ;
 int stub6 (struct gsw_mt753x*,int,int,int) ;
 int stub7 (struct gsw_mt753x*,int,int,int) ;
 int stub8 (struct gsw_mt753x*,int,int,int) ;
 int stub9 (struct gsw_mt753x*,int,int,int) ;

__attribute__((used)) static void mt7530_phy_setting(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;

 for (i = 0; i < MT753X_NUM_PHYS; i++) {

  gsw->mmd_write(gsw, i, PHY_DEV07, PHY_DEV07_REG_03C, 0);


  gsw->mii_write(gsw, i, 0x1f, 0x1);
  val = gsw->mii_read(gsw, i, PHY_EXT_REG_14);
  val |= PHY_EN_DOWN_SHFIT;
  gsw->mii_write(gsw, i, PHY_EXT_REG_14, val);


  gsw->mii_write(gsw, i, 0x1f, 0x52b5);
  gsw->mii_write(gsw, i, PHY_TR_REG_10, 0xafae);
  gsw->mii_write(gsw, i, PHY_TR_REG_12, 0x2f);
  gsw->mii_write(gsw, i, PHY_TR_REG_10, 0x8fae);


  gsw->mii_write(gsw, i, 0x1f, 0x3);
  gsw->mii_write(gsw, i, PHY_LPI_REG_11, 0x4b);
  gsw->mii_write(gsw, i, 0x1f, 0);


  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_123, 0xffff);


  gsw->mmd_write(gsw, i, PHY_DEV1E, PHY_DEV1E_REG_A6, 0x300);
 }
}
