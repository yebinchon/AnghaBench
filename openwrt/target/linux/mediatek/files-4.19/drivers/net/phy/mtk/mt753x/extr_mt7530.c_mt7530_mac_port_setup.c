
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int speed; int phy_mode; scalar_t__ duplex; scalar_t__ force_link; int enabled; } ;
struct TYPE_3__ {int speed; int phy_mode; int np; scalar_t__ duplex; scalar_t__ force_link; int enabled; } ;
struct gsw_mt753x {TYPE_2__ port6_cfg; int dev; TYPE_1__ port5_cfg; } ;


 int BACKPR_EN ;
 int BIT (int) ;
 int BKOFF_EN ;
 int FORCE_DPX ;
 int FORCE_LINK ;
 int FORCE_MODE ;
 int FORCE_RX_FC ;
 int FORCE_SPD_S ;
 int FORCE_TX_FC ;
 int IPG_96BIT_WITH_SHORT_IPG ;
 int IPG_CFG_S ;
 int MAC_MODE ;
 int MAC_RX_EN ;
 int MAC_TX_EN ;
 int MHWSTRAP ;
 int P5_INTF_DIS_S ;
 int P5_INTF_MODE_RGMII ;
 int P5_INTF_SEL_GMAC5 ;
 int P5_PHY0_SEL ;
 int P6ECR ;
 int P6_INTF_DIS ;




 int PMCR (int) ;
 int dev_info (int ,char*,...) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 int phy_modes (int) ;

__attribute__((used)) static int mt7530_mac_port_setup(struct gsw_mt753x *gsw)
{
 u32 hwstrap, p6ecr = 0, p5mcr, p6mcr, phyad;

 hwstrap = mt753x_reg_read(gsw, MHWSTRAP);
 hwstrap &= ~(P6_INTF_DIS | P5_INTF_MODE_RGMII | P5_INTF_DIS_S);
 hwstrap |= P5_INTF_SEL_GMAC5;
 if (!gsw->port5_cfg.enabled) {
  p5mcr = FORCE_MODE;
  hwstrap |= P5_INTF_DIS_S;
 } else {
  p5mcr = (IPG_96BIT_WITH_SHORT_IPG << IPG_CFG_S) |
   MAC_MODE | MAC_TX_EN | MAC_RX_EN |
   BKOFF_EN | BACKPR_EN;

  if (gsw->port5_cfg.force_link) {
   p5mcr |= FORCE_MODE | FORCE_LINK | FORCE_RX_FC |
     FORCE_TX_FC;
   p5mcr |= gsw->port5_cfg.speed << FORCE_SPD_S;

   if (gsw->port5_cfg.duplex)
    p5mcr |= FORCE_DPX;
  }

  switch (gsw->port5_cfg.phy_mode) {
  case 130:
  case 131:
   break;
  case 129:
   hwstrap |= P5_INTF_MODE_RGMII;
   break;
  default:
   dev_info(gsw->dev, "%s is not supported by port5\n",
     phy_modes(gsw->port5_cfg.phy_mode));
   p5mcr = FORCE_MODE;
   hwstrap |= P5_INTF_DIS_S;
  }


  if (of_property_read_u32(gsw->port5_cfg.np, "phy-address",
      &phyad))
   goto parse_p6;

  if (phyad != 0 && phyad != 4) {
   dev_info(gsw->dev,
     "Only PHY 0/4 can be connected to Port 5\n");
   goto parse_p6;
  }

  hwstrap &= ~P5_INTF_SEL_GMAC5;
  if (phyad == 0)
   hwstrap |= P5_PHY0_SEL;
  else
   hwstrap &= ~P5_PHY0_SEL;
 }

parse_p6:
 if (!gsw->port6_cfg.enabled) {
  p6mcr = FORCE_MODE;
  hwstrap |= P6_INTF_DIS;
 } else {
  p6mcr = (IPG_96BIT_WITH_SHORT_IPG << IPG_CFG_S) |
   MAC_MODE | MAC_TX_EN | MAC_RX_EN |
   BKOFF_EN | BACKPR_EN;

  if (gsw->port6_cfg.force_link) {
   p6mcr |= FORCE_MODE | FORCE_LINK | FORCE_RX_FC |
     FORCE_TX_FC;
   p6mcr |= gsw->port6_cfg.speed << FORCE_SPD_S;

   if (gsw->port6_cfg.duplex)
    p6mcr |= FORCE_DPX;
  }

  switch (gsw->port6_cfg.phy_mode) {
  case 129:
   p6ecr = BIT(1);
   break;
  case 128:

   p6ecr = BIT(0);
   break;
  default:
   dev_info(gsw->dev, "%s is not supported by port6\n",
     phy_modes(gsw->port6_cfg.phy_mode));
   p6mcr = FORCE_MODE;
   hwstrap |= P6_INTF_DIS;
  }
 }

 mt753x_reg_write(gsw, MHWSTRAP, hwstrap);
 mt753x_reg_write(gsw, P6ECR, p6ecr);

 mt753x_reg_write(gsw, PMCR(5), p5mcr);
 mt753x_reg_write(gsw, PMCR(6), p6mcr);

 return 0;
}
