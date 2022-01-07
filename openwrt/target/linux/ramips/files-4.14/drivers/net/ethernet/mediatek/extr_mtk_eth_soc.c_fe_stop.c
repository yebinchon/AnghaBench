
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fe_priv {int page_lock; TYPE_2__* phy; int rx_napi; TYPE_1__* soc; } ;
struct TYPE_4__ {int (* stop ) (struct fe_priv*) ;} ;
struct TYPE_3__ {int tx_int; int rx_int; } ;


 int FE_REG_PDMA_GLO_CFG ;
 int FE_RX_DMA_BUSY ;
 int FE_RX_DMA_EN ;
 int FE_TX_DMA_BUSY ;
 int FE_TX_DMA_EN ;
 int FE_TX_WB_DDONE ;
 int fe_free_dma (struct fe_priv*) ;
 int fe_int_disable (int) ;
 int fe_reg_r32 (int ) ;
 int fe_reg_w32 (int,int ) ;
 int msleep (int) ;
 int mtk_ppe_remove (struct fe_priv*) ;
 int napi_disable (int *) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fe_priv*) ;

__attribute__((used)) static int fe_stop(struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 unsigned long flags;
 int i;

 netif_tx_disable(dev);
 fe_int_disable(priv->soc->tx_int | priv->soc->rx_int);
 napi_disable(&priv->rx_napi);

 if (priv->phy)
  priv->phy->stop(priv);

 spin_lock_irqsave(&priv->page_lock, flags);

 fe_reg_w32(fe_reg_r32(FE_REG_PDMA_GLO_CFG) &
       ~(FE_TX_WB_DDONE | FE_RX_DMA_EN | FE_TX_DMA_EN),
       FE_REG_PDMA_GLO_CFG);
 spin_unlock_irqrestore(&priv->page_lock, flags);


 for (i = 0; i < 10; i++) {
  if (fe_reg_r32(FE_REG_PDMA_GLO_CFG) &
    (FE_TX_DMA_BUSY | FE_RX_DMA_BUSY)) {
   msleep(20);
   continue;
  }
  break;
 }

 fe_free_dma(priv);





 return 0;
}
