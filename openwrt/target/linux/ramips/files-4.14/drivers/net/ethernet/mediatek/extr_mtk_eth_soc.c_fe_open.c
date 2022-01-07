
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct fe_priv {int flags; TYPE_2__* soc; int rx_napi; TYPE_1__* phy; int page_lock; } ;
struct TYPE_4__ {int pdma_glo_cfg; int tx_int; int rx_int; scalar_t__ (* has_carrier ) (struct fe_priv*) ;} ;
struct TYPE_3__ {int (* start ) (struct fe_priv*) ;} ;


 int FE_FLAG_RX_2B_OFFSET ;
 int FE_REG_PDMA_GLO_CFG ;
 int FE_RX_2B_OFFSET ;
 int FE_RX_DMA_EN ;
 int FE_TX_DMA_EN ;
 int FE_TX_WB_DDONE ;
 int fe_free_dma (struct fe_priv*) ;
 int fe_init_dma (struct fe_priv*) ;
 int fe_int_enable (int) ;
 int fe_reg_w32 (int,int ) ;
 int mtk_ppe_probe (struct fe_priv*) ;
 int napi_enable (int *) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct fe_priv*) ;
 scalar_t__ stub2 (struct fe_priv*) ;

__attribute__((used)) static int fe_open(struct net_device *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 unsigned long flags;
 u32 val;
 int err;

 err = fe_init_dma(priv);
 if (err) {
  fe_free_dma(priv);
  return err;
 }

 spin_lock_irqsave(&priv->page_lock, flags);

 val = FE_TX_WB_DDONE | FE_RX_DMA_EN | FE_TX_DMA_EN;
 if (priv->flags & FE_FLAG_RX_2B_OFFSET)
  val |= FE_RX_2B_OFFSET;
 val |= priv->soc->pdma_glo_cfg;
 fe_reg_w32(val, FE_REG_PDMA_GLO_CFG);

 spin_unlock_irqrestore(&priv->page_lock, flags);

 if (priv->phy)
  priv->phy->start(priv);

 if (priv->soc->has_carrier && priv->soc->has_carrier(priv))
  netif_carrier_on(dev);

 napi_enable(&priv->rx_napi);
 fe_int_enable(priv->soc->tx_int | priv->soc->rx_int);
 netif_start_queue(dev);




 return 0;
}
