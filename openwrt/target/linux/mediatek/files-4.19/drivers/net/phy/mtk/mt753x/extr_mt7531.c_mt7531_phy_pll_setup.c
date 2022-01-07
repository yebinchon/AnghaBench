
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int (* mmd_read ) (struct gsw_mt753x*,int ,int ,int ) ;int (* mmd_write ) (struct gsw_mt753x*,int ,int ,int ,int) ;} ;


 int HWSTRAP ;
 int PHY_DEV1F ;
 int PHY_DEV1F_REG_104 ;
 int PHY_DEV1F_REG_10A ;
 int PHY_DEV1F_REG_10B ;
 int PHY_DEV1F_REG_10C ;
 int PHY_DEV1F_REG_10D ;
 int PHY_DEV1F_REG_403 ;
 int PHY_PLL_M ;
 int PHY_PLL_SEL (int) ;


 int XTAL_FSEL_M ;
 int XTAL_FSEL_S ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int stub1 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub10 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub11 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub12 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub13 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub14 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub2 (struct gsw_mt753x*,int ,int ,int ) ;
 int stub3 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub4 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub5 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub6 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub7 (struct gsw_mt753x*,int ,int ,int ,int) ;
 int stub8 (struct gsw_mt753x*,int ,int ,int ) ;
 int stub9 (struct gsw_mt753x*,int ,int ,int ,int) ;

__attribute__((used)) static void mt7531_phy_pll_setup(struct gsw_mt753x *gsw)
{
 u32 hwstrap;
 u32 val;

 hwstrap = mt753x_reg_read(gsw, HWSTRAP);

 switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
 case 129:

  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_104, 0x608);


  val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
         PHY_DEV1F_REG_403);
  val &= ~(PHY_PLL_M);
  val |= PHY_PLL_SEL(3);
  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);


  gsw->mmd_write(gsw, 0, PHY_DEV1F,
          PHY_DEV1F_REG_10A, 0x1009);


  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10B, 0x7c6);


  gsw->mmd_write(gsw, 0, PHY_DEV1F,
          PHY_DEV1F_REG_10C, 0xa8be);

  break;
 case 128:

  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_104, 0x608);


  val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
         PHY_DEV1F_REG_403);
  val &= ~(PHY_PLL_M);
  val |= PHY_PLL_SEL(3);
  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);


  gsw->mmd_write(gsw, 0, PHY_DEV1F,
          PHY_DEV1F_REG_10A, 0x1018);


  gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10B, 0xc676);


  gsw->mmd_write(gsw, 0, PHY_DEV1F,
          PHY_DEV1F_REG_10C, 0xd8be);
  break;
 }


 gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10D, 0x10);


 gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10D, 0x14);
}
