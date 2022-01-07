
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int descs_dma; } ;
struct TYPE_3__ {int descs_dma; } ;
struct ag71xx {int dev; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int napi; } ;


 int AG71XX_REG_RX_DESC ;
 int AG71XX_REG_TX_DESC ;
 int ag71xx_rings_init (struct ag71xx*) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 int napi_enable (int *) ;
 int netif_start_queue (int ) ;

__attribute__((used)) static int ag71xx_hw_enable(struct ag71xx *ag)
{
 int ret;

 ret = ag71xx_rings_init(ag);
 if (ret)
  return ret;

 napi_enable(&ag->napi);
 ag71xx_wr(ag, AG71XX_REG_TX_DESC, ag->tx_ring.descs_dma);
 ag71xx_wr(ag, AG71XX_REG_RX_DESC, ag->rx_ring.descs_dma);
 netif_start_queue(ag->dev);

 return 0;
}
