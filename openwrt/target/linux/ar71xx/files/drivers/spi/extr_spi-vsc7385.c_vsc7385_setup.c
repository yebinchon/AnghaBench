
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ bit2; int clk_sel; int tx_ipg; } ;
struct vsc7385_platform_data {TYPE_1__ mac_cfg; } ;
struct vsc7385 {struct vsc7385_platform_data* pdata; } ;


 int VSC7385_ADVPORTM_INIT ;
 int VSC7385_ADVPORTM_MASK ;
 int VSC7385_CLOCK_DELAY ;
 int VSC7385_CLOCK_DELAY_MASK ;
 int VSC7385_MAC_CFG_RESET ;
 int VSC73XX_ADVPORTM ;
 int VSC73XX_BLOCK_MAC ;
 int VSC73XX_BLOCK_SYSTEM ;
 int VSC73XX_ICPU_CLOCK_DELAY ;
 int VSC73XX_MAC_CFG ;
 int VSC73XX_MAC_CFG_BIT2 ;
 int VSC73XX_MAC_CFG_CLK_SEL (int ) ;
 int VSC73XX_MAC_CFG_INIT ;
 int VSC73XX_MAC_CFG_TX_IPG (int ) ;
 int VSC73XX_SUBBLOCK_PORT_MAC ;
 int vsc7385_write (struct vsc7385*,int ,int ,int ,int ) ;
 int vsc7385_write_verify (struct vsc7385*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int vsc7385_setup(struct vsc7385 *vsc)
{
 struct vsc7385_platform_data *pdata = vsc->pdata;
 u32 t;
 int err;

 err = vsc7385_write_verify(vsc, VSC73XX_BLOCK_SYSTEM, 0,
       VSC73XX_ICPU_CLOCK_DELAY,
       VSC7385_CLOCK_DELAY,
       VSC7385_CLOCK_DELAY_MASK,
       VSC7385_CLOCK_DELAY);
 if (err)
  goto err;

 err = vsc7385_write_verify(vsc, VSC73XX_BLOCK_MAC,
       VSC73XX_SUBBLOCK_PORT_MAC, VSC73XX_ADVPORTM,
       VSC7385_ADVPORTM_INIT,
       VSC7385_ADVPORTM_MASK,
       VSC7385_ADVPORTM_INIT);
 if (err)
  goto err;

 err = vsc7385_write(vsc, VSC73XX_BLOCK_MAC, VSC73XX_SUBBLOCK_PORT_MAC,
       VSC73XX_MAC_CFG, VSC7385_MAC_CFG_RESET);
 if (err)
  goto err;

 t = VSC73XX_MAC_CFG_INIT;
 t |= VSC73XX_MAC_CFG_TX_IPG(pdata->mac_cfg.tx_ipg);
 t |= VSC73XX_MAC_CFG_CLK_SEL(pdata->mac_cfg.clk_sel);
 if (pdata->mac_cfg.bit2)
  t |= VSC73XX_MAC_CFG_BIT2;

 err = vsc7385_write(vsc, VSC73XX_BLOCK_MAC, VSC73XX_SUBBLOCK_PORT_MAC,
       VSC73XX_MAC_CFG, t);
 if (err)
  goto err;

 return 0;

err:
 return err;
}
