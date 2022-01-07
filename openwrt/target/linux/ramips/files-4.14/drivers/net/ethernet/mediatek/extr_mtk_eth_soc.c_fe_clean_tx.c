
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fe_tx_ring {int tx_ring_size; int * tx_dma; int tx_phys; int * tx_buf; } ;
struct fe_priv {TYPE_1__* netdev; struct fe_tx_ring tx_ring; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dma_free_coherent (struct device*,int,int *,int ) ;
 int fe_txd_unmap (struct device*,int *) ;
 int kfree (int *) ;
 int netdev_reset_queue (TYPE_1__*) ;

__attribute__((used)) static void fe_clean_tx(struct fe_priv *priv)
{
 int i;
 struct device *dev = &priv->netdev->dev;
 struct fe_tx_ring *ring = &priv->tx_ring;

 if (ring->tx_buf) {
  for (i = 0; i < ring->tx_ring_size; i++)
   fe_txd_unmap(dev, &ring->tx_buf[i]);
  kfree(ring->tx_buf);
  ring->tx_buf = ((void*)0);
 }

 if (ring->tx_dma) {
  dma_free_coherent(dev,
      ring->tx_ring_size * sizeof(*ring->tx_dma),
      ring->tx_dma,
      ring->tx_phys);
  ring->tx_dma = ((void*)0);
 }

 netdev_reset_queue(priv->netdev);
}
