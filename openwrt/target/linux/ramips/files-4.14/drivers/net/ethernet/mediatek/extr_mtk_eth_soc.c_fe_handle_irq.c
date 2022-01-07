
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fe_priv {int rx_napi; TYPE_1__* soc; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int rx_int; int tx_int; } ;


 int FE_REG_FE_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int __napi_schedule (int *) ;
 int fe_int_disable (int) ;
 int fe_reg_r32 (int ) ;
 int fe_reg_w32 (int,int ) ;
 scalar_t__ likely (int) ;
 int napi_schedule_prep (int *) ;
 struct fe_priv* netdev_priv (void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t fe_handle_irq(int irq, void *dev)
{
 struct fe_priv *priv = netdev_priv(dev);
 u32 status, int_mask;

 status = fe_reg_r32(FE_REG_FE_INT_STATUS);

 if (unlikely(!status))
  return IRQ_NONE;

 int_mask = (priv->soc->rx_int | priv->soc->tx_int);
 if (likely(status & int_mask)) {
  if (likely(napi_schedule_prep(&priv->rx_napi))) {
   fe_int_disable(int_mask);
   __napi_schedule(&priv->rx_napi);
  }
 } else {
  fe_reg_w32(status, FE_REG_FE_INT_STATUS);
 }

 return IRQ_HANDLED;
}
