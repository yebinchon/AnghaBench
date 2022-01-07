
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mmd_read ) (struct gsw_mt753x*,int ,int ,int ) ;int (* mii_read ) (struct gsw_mt753x*,int,int ) ;int (* mmd_write ) (struct gsw_mt753x*,int ,int ,int ,int) ;int (* mii_write ) (struct gsw_mt753x*,int,int ,int) ;} ;


 int BMCR_ISOLATE ;
 int CHIP_REV ;
 int CHIP_REV_E1 ;
 int CHIP_REV_M ;
 int GBE_EFUSE ;
 int GBE_EFUSE_SETTING ;
 int GBE_SEL_EFUSE_EN ;
 int MII_BMCR ;
 int MT753X_NUM_PHYS ;
 int PHY_DEV1F ;
 int PHY_DEV1F_REG_403 ;
 int PHY_EN_BYPASS_MODE ;
 int POWER_ON_OFF ;
 int mt7531_adjust_line_driving (struct gsw_mt753x*,int) ;
 int mt7531_eee_setting (struct gsw_mt753x*,int) ;
 int mt7531_internal_phy_calibration (struct gsw_mt753x*) ;
 int mt7531_phy_pll_setup (struct gsw_mt753x*) ;
 int mt7531_phy_setting (struct gsw_mt753x*) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int stub1 (struct gsw_mt753x*,int ,int ,int ) ;
 int stub2 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub3 (struct gsw_mt753x*,int,int ) ;
 int stub4 (struct gsw_mt753x*,int,int ,int) ;
 int stub5 (struct gsw_mt753x*,int ,int ,int ) ;
 int stub6 (struct gsw_mt753x*,int ,int ,int ,int) ;

__attribute__((used)) static int mt7531_sw_post_init(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;

 mt7531_phy_pll_setup(gsw);




 val = gsw->mmd_read(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403);
 val |= PHY_EN_BYPASS_MODE;
 val &= ~POWER_ON_OFF;
 gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);

 mt7531_phy_setting(gsw);

 for (i = 0; i < MT753X_NUM_PHYS; i++) {
  val = gsw->mii_read(gsw, i, MII_BMCR);
  val &= ~BMCR_ISOLATE;
  gsw->mii_write(gsw, i, MII_BMCR, val);
 }

 for (i = 0; i < MT753X_NUM_PHYS; i++)
  mt7531_adjust_line_driving(gsw, i);

 for (i = 0; i < MT753X_NUM_PHYS; i++)
  mt7531_eee_setting(gsw, i);

 val = mt753x_reg_read(gsw, CHIP_REV);
 val &= CHIP_REV_M;
 if (val == CHIP_REV_E1) {
  mt7531_internal_phy_calibration(gsw);
 } else {
  val = mt753x_reg_read(gsw, GBE_EFUSE);
  if (val & GBE_SEL_EFUSE_EN) {
   val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
         PHY_DEV1F_REG_403);
   val &= ~GBE_EFUSE_SETTING;
   gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403,
           val);
  } else {
   mt7531_internal_phy_calibration(gsw);
  }
 }

 return 0;
}
