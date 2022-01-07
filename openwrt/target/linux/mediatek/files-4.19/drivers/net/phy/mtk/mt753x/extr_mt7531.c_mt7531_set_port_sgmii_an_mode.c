
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt753x_port_cfg {int speed; } ;
struct gsw_mt753x {int dev; } ;
typedef int ktime_t ;


 int EINVAL ;
 int ETIMEDOUT ;


 int MT753X_NUM_PORTS ;
 int PCS_CONTROL_1 (int) ;
 int PHYA_CTRL_SIGNAL3 (int) ;
 int RG_TPHY_SPEED_1000 ;
 int RG_TPHY_SPEED_2500 ;
 int RG_TPHY_SPEED_M ;
 int RG_TPHY_SPEED_S ;
 int SGMII_AN_RESTART ;
 int SGMII_LINK_STATUS ;
 int SGMII_MODE (int) ;
 int SGMII_REMOTE_FAULT_DIS ;
 int dev_info (int ,char*,int,...) ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare (int ,int ) ;
 int ktime_get () ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static int mt7531_set_port_sgmii_an_mode(struct gsw_mt753x *gsw, u32 port,
      struct mt753x_port_cfg *port_cfg)
{
 u32 speed, port_base, val;
 ktime_t timeout;
 u32 timeout_us;

 if (port < 5 || port >= MT753X_NUM_PORTS) {
  dev_info(gsw->dev, "port %d is not a SGMII port\n", port);
  return -EINVAL;
 }

 port_base = port - 5;

 switch (port_cfg->speed) {
 case 129:
  speed = RG_TPHY_SPEED_1000;
  break;
 case 128:
  speed = RG_TPHY_SPEED_2500;
  break;
 default:
  dev_info(gsw->dev, "invalid SGMII speed idx %d for port %d\n",
    port_cfg->speed, port);

  speed = RG_TPHY_SPEED_1000;
 }


 val = mt753x_reg_read(gsw, PHYA_CTRL_SIGNAL3(port_base));
 val &= ~RG_TPHY_SPEED_M;
 val |= speed << RG_TPHY_SPEED_S;
 mt753x_reg_write(gsw, PHYA_CTRL_SIGNAL3(port_base), val);


 val = mt753x_reg_read(gsw, SGMII_MODE(port));
 val |= SGMII_REMOTE_FAULT_DIS;
 mt753x_reg_write(gsw, SGMII_MODE(port), val);






 val = mt753x_reg_read(gsw, PCS_CONTROL_1(port));
 val |= SGMII_AN_RESTART;
 mt753x_reg_write(gsw, PCS_CONTROL_1(port), val);




 timeout_us = 2000000;
 timeout = ktime_add_us(ktime_get(), timeout_us);
 while (1) {
  val = mt753x_reg_read(gsw, PCS_CONTROL_1(port_base));
  val &= SGMII_LINK_STATUS;

  if (val)
   break;

  if (ktime_compare(ktime_get(), timeout) > 0)
   return -ETIMEDOUT;
 }

 return 0;
}
