
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gsw_mt753x {int dev; } ;


 int CLKGEN_CTRL ;
 int CLK_SKEW_IN_M ;
 int CLK_SKEW_IN_NO_CHANGE ;
 int CLK_SKEW_IN_S ;
 int CLK_SKEW_OUT_M ;
 int CLK_SKEW_OUT_NO_CHANGE ;
 int CLK_SKEW_OUT_S ;
 int EINVAL ;
 int GP_CLK_EN ;
 int GP_MODE_M ;
 int GP_MODE_RGMII ;
 int GP_MODE_S ;
 int RXCLK_NO_DELAY ;
 int TXCLK_NO_REVERSE ;
 int dev_info (int ,char*,int) ;
 int mt753x_reg_read (struct gsw_mt753x*,int ) ;
 int mt753x_reg_write (struct gsw_mt753x*,int ,int) ;

__attribute__((used)) static int mt7531_set_port_rgmii(struct gsw_mt753x *gsw, u32 port)
{
 u32 val;

 if (port != 5) {
  dev_info(gsw->dev, "RGMII mode is not available for port %d\n",
    port);
  return -EINVAL;
 }

 val = mt753x_reg_read(gsw, CLKGEN_CTRL);
 val |= GP_CLK_EN;
 val &= ~GP_MODE_M;
 val |= GP_MODE_RGMII << GP_MODE_S;
 val |= TXCLK_NO_REVERSE;
 val |= RXCLK_NO_DELAY;
 val &= ~CLK_SKEW_IN_M;
 val |= CLK_SKEW_IN_NO_CHANGE << CLK_SKEW_IN_S;
 val &= ~CLK_SKEW_OUT_M;
 val |= CLK_SKEW_OUT_NO_CHANGE << CLK_SKEW_OUT_S;
 mt753x_reg_write(gsw, CLKGEN_CTRL, val);

 return 0;
}
