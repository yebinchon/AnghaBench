
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct gsw_mt753x {int phy_base; int (* mii_read ) (struct gsw_mt753x*,int,int ) ;int (* mii_write ) (struct gsw_mt753x*,int,int ,int) ;int mmd_write; int mmd_read; scalar_t__ direct_phy_access; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int BMCR_PDOWN ;
 int CHG_TRAP ;
 int C_MDIO_BPS_S ;
 int FORCE_MODE ;
 int GMACCR ;
 int HWSTRAP ;
 int LATE_COL_DROP ;
 int MAX_RX_JUMBO_S ;
 int MHWSTRAP ;
 int MII_BMCR ;
 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int MTCC_LMT_S ;
 int PMCR (int) ;
 int RX_PKT_LEN_MAX_JUMBO ;
 int SMI_ADDR_M ;
 int SMI_ADDR_S ;
 int SW_PHY_RST ;
 int SW_REG_RST ;
 int SW_SYS_RST ;
 int SYS_CTRL ;
 scalar_t__ get_phy_access_mode (int ) ;
 int mt7530_core_pll_setup (struct gsw_mt753x*) ;
 int mt7530_mac_port_setup (struct gsw_mt753x*) ;
 int mt7530_mii_read (struct gsw_mt753x*,int,int ) ;
 int mt7530_mii_write (struct gsw_mt753x*,int,int ,int) ;
 int mt7530_mmd_read ;
 int mt7530_mmd_write ;
 int mt753x_mii_read (struct gsw_mt753x*,int,int ) ;
 int mt753x_mii_write (struct gsw_mt753x*,int,int ,int) ;
 int mt753x_mmd_ind_read ;
 int mt753x_mmd_ind_write ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 int stub1 (struct gsw_mt753x*,int,int ) ;
 int stub2 (struct gsw_mt753x*,int,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mt7530_sw_init(struct gsw_mt753x *gsw)
{
 int i;
 u32 val;

 gsw->direct_phy_access = get_phy_access_mode(gsw->dev->of_node);


 val = mt753x_reg_read(gsw, HWSTRAP);
 val |= CHG_TRAP;
 if (gsw->direct_phy_access)
  val &= ~C_MDIO_BPS_S;
 else
  val |= C_MDIO_BPS_S;
 mt753x_reg_write(gsw, MHWSTRAP, val);


 gsw->phy_base = (((val & SMI_ADDR_M) >> SMI_ADDR_S) << 3) + 8;
 gsw->phy_base &= MT753X_SMI_ADDR_MASK;

 if (gsw->direct_phy_access) {
  gsw->mii_read = mt7530_mii_read;
  gsw->mii_write = mt7530_mii_write;
  gsw->mmd_read = mt7530_mmd_read;
  gsw->mmd_write = mt7530_mmd_write;
 } else {
  gsw->mii_read = mt753x_mii_read;
  gsw->mii_write = mt753x_mii_write;
  gsw->mmd_read = mt753x_mmd_ind_read;
  gsw->mmd_write = mt753x_mmd_ind_write;
 }

 for (i = 0; i < MT753X_NUM_PHYS; i++) {
  val = gsw->mii_read(gsw, i, MII_BMCR);
  val |= BMCR_PDOWN;
  gsw->mii_write(gsw, i, MII_BMCR, val);
 }


 mt753x_reg_write(gsw, PMCR(5), FORCE_MODE);
 mt753x_reg_write(gsw, PMCR(6), FORCE_MODE);



 mt753x_reg_write(gsw, SYS_CTRL, SW_PHY_RST | SW_SYS_RST | SW_REG_RST);
 usleep_range(10, 20);


 mt753x_reg_write(gsw, GMACCR,
    LATE_COL_DROP | (15 << MTCC_LMT_S) |
    (2 << MAX_RX_JUMBO_S) | RX_PKT_LEN_MAX_JUMBO);

 mt7530_core_pll_setup(gsw);
 mt7530_mac_port_setup(gsw);

 return 0;
}
