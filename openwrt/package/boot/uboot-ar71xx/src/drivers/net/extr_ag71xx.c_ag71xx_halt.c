
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eth_device {scalar_t__ priv; } ;
struct ag71xx {int dummy; } ;


 int AG71XX_REG_RX_CTRL ;
 int ag71xx_dma_reset (struct ag71xx*) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;

__attribute__((used)) static void ag71xx_halt(struct eth_device *dev)
{
    struct ag71xx *ag = (struct ag71xx *) dev->priv;


 ag71xx_wr(ag, AG71XX_REG_RX_CTRL, 0);

 ag71xx_dma_reset(ag);
}
