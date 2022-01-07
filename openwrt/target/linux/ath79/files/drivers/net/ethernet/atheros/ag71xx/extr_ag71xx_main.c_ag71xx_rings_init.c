
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ag71xx_ring {scalar_t__ descs_dma; void* descs_cpu; int * buf; int order; } ;
struct ag71xx {TYPE_1__* pdev; struct ag71xx_ring rx_ring; struct ag71xx_ring tx_ring; } ;
struct TYPE_2__ {int dev; } ;


 int AG71XX_DESC_SIZE ;
 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ag71xx_ring_rx_init (struct ag71xx*) ;
 int ag71xx_ring_tx_init (struct ag71xx*) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static int ag71xx_rings_init(struct ag71xx *ag)
{
 struct ag71xx_ring *tx = &ag->tx_ring;
 struct ag71xx_ring *rx = &ag->rx_ring;
 int ring_size = BIT(tx->order) + BIT(rx->order);
 int tx_size = BIT(tx->order);

 tx->buf = kzalloc(ring_size * sizeof(*tx->buf), GFP_KERNEL);
 if (!tx->buf)
  return -ENOMEM;

 tx->descs_cpu = dma_alloc_coherent(&ag->pdev->dev, ring_size * AG71XX_DESC_SIZE,
        &tx->descs_dma, GFP_KERNEL);
 if (!tx->descs_cpu) {
  kfree(tx->buf);
  tx->buf = ((void*)0);
  return -ENOMEM;
 }

 rx->buf = &tx->buf[tx_size];
 rx->descs_cpu = ((void *)tx->descs_cpu) + tx_size * AG71XX_DESC_SIZE;
 rx->descs_dma = tx->descs_dma + tx_size * AG71XX_DESC_SIZE;

 ag71xx_ring_tx_init(ag);
 return ag71xx_ring_rx_init(ag);
}
