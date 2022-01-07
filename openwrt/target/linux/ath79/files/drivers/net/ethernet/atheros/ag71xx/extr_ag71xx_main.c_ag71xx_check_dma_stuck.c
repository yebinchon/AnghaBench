
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ag71xx {int dev; } ;
struct TYPE_2__ {unsigned long trans_start; } ;


 int AG71XX_REG_FIFO_DEPTH ;
 int AG71XX_REG_RX_SM ;
 int AG71XX_REG_TX_SM ;
 int HZ ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int jiffies ;
 scalar_t__ likely (int ) ;
 TYPE_1__* netdev_get_tx_queue (int ,int ) ;
 int netif_carrier_ok (int ) ;
 int time_before (int ,unsigned long) ;

__attribute__((used)) static bool ag71xx_check_dma_stuck(struct ag71xx *ag)
{
 unsigned long timestamp;
 u32 rx_sm, tx_sm, rx_fd;

 timestamp = netdev_get_tx_queue(ag->dev, 0)->trans_start;
 if (likely(time_before(jiffies, timestamp + HZ/10)))
  return 0;

 if (!netif_carrier_ok(ag->dev))
  return 0;

 rx_sm = ag71xx_rr(ag, AG71XX_REG_RX_SM);
 if ((rx_sm & 0x7) == 0x3 && ((rx_sm >> 4) & 0x7) == 0x6)
  return 1;

 tx_sm = ag71xx_rr(ag, AG71XX_REG_TX_SM);
 rx_fd = ag71xx_rr(ag, AG71XX_REG_FIFO_DEPTH);
 if (((tx_sm >> 4) & 0x7) == 0 && ((rx_sm & 0x7) == 0) &&
     ((rx_sm >> 4) & 0x7) == 0 && rx_fd == 0)
  return 1;

 return 0;
}
