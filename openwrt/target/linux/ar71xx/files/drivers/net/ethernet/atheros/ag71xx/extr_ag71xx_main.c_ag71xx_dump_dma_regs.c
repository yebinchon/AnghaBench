
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx {TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int AG71XX_REG_RX_CTRL ;
 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_RX_STATUS ;
 int AG71XX_REG_TX_CTRL ;
 int AG71XX_REG_TX_DESC ;
 int AG71XX_REG_TX_STATUS ;
 int DBG (char*,int ,int ,int ,int ) ;
 int ag71xx_rr (struct ag71xx*,int ) ;

__attribute__((used)) static void ag71xx_dump_dma_regs(struct ag71xx *ag)
{
 DBG("%s: dma_tx_ctrl=%08x, dma_tx_desc=%08x, dma_tx_status=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_TX_CTRL),
  ag71xx_rr(ag, AG71XX_REG_TX_DESC),
  ag71xx_rr(ag, AG71XX_REG_TX_STATUS));

 DBG("%s: dma_rx_ctrl=%08x, dma_rx_desc=%08x, dma_rx_status=%08x\n",
  ag->dev->name,
  ag71xx_rr(ag, AG71XX_REG_RX_CTRL),
  ag71xx_rr(ag, AG71XX_REG_RX_DESC),
  ag71xx_rr(ag, AG71XX_REG_RX_STATUS));
}
