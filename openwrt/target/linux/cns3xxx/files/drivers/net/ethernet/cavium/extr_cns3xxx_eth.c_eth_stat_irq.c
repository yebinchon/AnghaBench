
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sw {TYPE_2__* regs; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_6__ {int rx_dropped; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {TYPE_5__* netdev; TYPE_3__* phydev; } ;
struct TYPE_8__ {int link; int duplex; int speed; } ;
struct TYPE_7__ {int * mac_cfg; int intr_stat; } ;


 int IRQ_HANDLED ;
 int MAC0_RX_ERROR ;
 int MAC0_STATUS_CHANGE ;
 int MAC1_RX_ERROR ;
 int MAC1_STATUS_CHANGE ;
 int MAC2_RX_ERROR ;
 int MAC2_STATUS_CHANGE ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int cns3xxx_adjust_link (TYPE_5__*) ;
 struct sw* netdev_priv (struct net_device*) ;
 TYPE_4__** switch_port_tab ;

irqreturn_t eth_stat_irq(int irq, void *pdev)
{
 struct net_device *dev = pdev;
 struct sw *sw = netdev_priv(dev);
 u32 cfg;
 u32 stat = __raw_readl(&sw->regs->intr_stat);
 __raw_writel(0xffffffff, &sw->regs->intr_stat);

 if (stat & MAC2_RX_ERROR)
  switch_port_tab[3]->netdev->stats.rx_dropped++;
 if (stat & MAC1_RX_ERROR)
  switch_port_tab[1]->netdev->stats.rx_dropped++;
 if (stat & MAC0_RX_ERROR)
  switch_port_tab[0]->netdev->stats.rx_dropped++;

 if (stat & MAC0_STATUS_CHANGE) {
  cfg = __raw_readl(&sw->regs->mac_cfg[0]);
  switch_port_tab[0]->phydev->link = (cfg & 0x1);
  switch_port_tab[0]->phydev->duplex = ((cfg >> 4) & 0x1);
  if (((cfg >> 2) & 0x3) == 2)
   switch_port_tab[0]->phydev->speed = 1000;
  else if (((cfg >> 2) & 0x3) == 1)
   switch_port_tab[0]->phydev->speed = 100;
  else
   switch_port_tab[0]->phydev->speed = 10;
  cns3xxx_adjust_link(switch_port_tab[0]->netdev);
 }

 if (stat & MAC1_STATUS_CHANGE) {
  cfg = __raw_readl(&sw->regs->mac_cfg[1]);
  switch_port_tab[1]->phydev->link = (cfg & 0x1);
  switch_port_tab[1]->phydev->duplex = ((cfg >> 4) & 0x1);
  if (((cfg >> 2) & 0x3) == 2)
   switch_port_tab[1]->phydev->speed = 1000;
  else if (((cfg >> 2) & 0x3) == 1)
   switch_port_tab[1]->phydev->speed = 100;
  else
   switch_port_tab[1]->phydev->speed = 10;
  cns3xxx_adjust_link(switch_port_tab[1]->netdev);
 }

 if (stat & MAC2_STATUS_CHANGE) {
  cfg = __raw_readl(&sw->regs->mac_cfg[3]);
  switch_port_tab[3]->phydev->link = (cfg & 0x1);
  switch_port_tab[3]->phydev->duplex = ((cfg >> 4) & 0x1);
  if (((cfg >> 2) & 0x3) == 2)
   switch_port_tab[3]->phydev->speed = 1000;
  else if (((cfg >> 2) & 0x3) == 1)
   switch_port_tab[3]->phydev->speed = 100;
  else
   switch_port_tab[3]->phydev->speed = 10;
  cns3xxx_adjust_link(switch_port_tab[3]->netdev);
 }

 return (IRQ_HANDLED);
}
