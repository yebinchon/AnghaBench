
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dummy; } ;


 int ANA_PLLGP_CR2 ;
 int ANA_PLLGP_CR5 ;
 int EN_COREPLL ;
 int HWSTRAP ;
 int PAD_DUAL_SGMII_EN ;
 int PLLGP_CR0 ;
 int PLLGP_EN ;
 int RG_COREPLL_EN ;
 int RG_COREPLL_POSDIV_M ;
 int RG_COREPLL_POSDIV_S ;
 int RG_COREPLL_SDM_PCW_CHG ;
 int RG_COREPLL_SDM_PCW_M ;
 int RG_COREPLL_SDM_PCW_S ;
 int SW_CLKSW ;
 int SW_PLLGP ;
 int TOP_SIG_SR ;


 int XTAL_FSEL_M ;
 int XTAL_FSEL_S ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mt7531_core_pll_setup(struct gsw_mt753x *gsw)
{
 u32 hwstrap;
 u32 val;

 val = mt753x_reg_read(gsw, TOP_SIG_SR);
 if (val & PAD_DUAL_SGMII_EN)
  return;

 hwstrap = mt753x_reg_read(gsw, HWSTRAP);

 switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
 case 129:

  val = mt753x_reg_read(gsw, PLLGP_EN);
  val &= ~EN_COREPLL;
  mt753x_reg_write(gsw, PLLGP_EN, val);


  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= SW_CLKSW;
  mt753x_reg_write(gsw, PLLGP_EN, val);

  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_EN;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= SW_PLLGP;
  mt753x_reg_write(gsw, PLLGP_EN, val);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_POSDIV_M;
  val |= 2 << RG_COREPLL_POSDIV_S;
  mt753x_reg_write(gsw, PLLGP_CR0, val);
  usleep_range(25, 35);

  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_SDM_PCW_M;
  val |= 0x140000 << RG_COREPLL_SDM_PCW_S;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val |= RG_COREPLL_SDM_PCW_CHG;
  mt753x_reg_write(gsw, PLLGP_CR0, val);

  usleep_range(10, 20);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_SDM_PCW_CHG;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  mt753x_reg_write(gsw, ANA_PLLGP_CR5, 0xad0000);


  mt753x_reg_write(gsw, ANA_PLLGP_CR2, 0x4f40000);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val |= RG_COREPLL_EN;
  mt753x_reg_write(gsw, PLLGP_CR0, val);

  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= EN_COREPLL;
  mt753x_reg_write(gsw, PLLGP_EN, val);
  usleep_range(25, 35);

  break;
 case 128:

  val = mt753x_reg_read(gsw, PLLGP_EN);
  val &= ~EN_COREPLL;
  mt753x_reg_write(gsw, PLLGP_EN, val);


  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= SW_CLKSW;
  mt753x_reg_write(gsw, PLLGP_EN, val);

  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_EN;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= SW_PLLGP;
  mt753x_reg_write(gsw, PLLGP_EN, val);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_POSDIV_M;
  val |= 2 << RG_COREPLL_POSDIV_S;
  mt753x_reg_write(gsw, PLLGP_CR0, val);
  usleep_range(25, 35);

  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_SDM_PCW_M;
  val |= 0x190000 << RG_COREPLL_SDM_PCW_S;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val |= RG_COREPLL_SDM_PCW_CHG;
  mt753x_reg_write(gsw, PLLGP_CR0, val);

  usleep_range(10, 20);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val &= ~RG_COREPLL_SDM_PCW_CHG;
  mt753x_reg_write(gsw, PLLGP_CR0, val);


  mt753x_reg_write(gsw, ANA_PLLGP_CR5, 0xad0000);


  mt753x_reg_write(gsw, ANA_PLLGP_CR2, 0x4f40000);


  val = mt753x_reg_read(gsw, PLLGP_CR0);
  val |= RG_COREPLL_EN;
  mt753x_reg_write(gsw, PLLGP_CR0, val);

  val = mt753x_reg_read(gsw, PLLGP_EN);
  val |= EN_COREPLL;
  mt753x_reg_write(gsw, PLLGP_EN, val);
  usleep_range(25, 35);
  break;
 }
}
