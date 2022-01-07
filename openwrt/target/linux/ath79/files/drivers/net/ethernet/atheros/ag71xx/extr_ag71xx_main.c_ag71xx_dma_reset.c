
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ag71xx {int stop_desc_dma; TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_RX_STATUS ;
 int AG71XX_REG_TX_CTRL ;
 int AG71XX_REG_TX_DESC ;
 int AG71XX_REG_TX_STATUS ;
 int RX_STATUS_BE ;
 int RX_STATUS_OF ;
 int RX_STATUS_PR ;
 int TX_STATUS_BE ;
 int TX_STATUS_PS ;
 int TX_STATUS_UR ;
 int ag71xx_dump_dma_regs (struct ag71xx*) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int mdelay (int) ;
 int pr_alert (char*,int ,int) ;

__attribute__((used)) static void ag71xx_dma_reset(struct ag71xx *ag)
{
 u32 val;
 int i;

 ag71xx_dump_dma_regs(ag);


 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, 0);
 ag71xx_wr(ag, AG71XX_REG_TX_CTRL, 0);





 mdelay(1);


 ag71xx_wr(ag, AG71XX_REG_TX_DESC, ag->stop_desc_dma);
 ag71xx_wr(ag, AG71XX_REG_RX_DESC, ag->stop_desc_dma);


 for (i = 0; i < 256; i++) {
  ag71xx_wr(ag, AG71XX_REG_RX_STATUS, RX_STATUS_PR);
  ag71xx_wr(ag, AG71XX_REG_TX_STATUS, TX_STATUS_PS);
 }


 ag71xx_wr(ag, AG71XX_REG_RX_STATUS, RX_STATUS_BE | RX_STATUS_OF);
 ag71xx_wr(ag, AG71XX_REG_TX_STATUS, TX_STATUS_BE | TX_STATUS_UR);

 val = ag71xx_rr(ag, AG71XX_REG_RX_STATUS);
 if (val)
  pr_alert("%s: unable to clear DMA Rx status: %08x\n",
    ag->dev->name, val);

 val = ag71xx_rr(ag, AG71XX_REG_TX_STATUS);


 val &= ~0xff000000;

 if (val)
  pr_alert("%s: unable to clear DMA Tx status: %08x\n",
    ag->dev->name, val);

 ag71xx_dump_dma_regs(ag);
}
