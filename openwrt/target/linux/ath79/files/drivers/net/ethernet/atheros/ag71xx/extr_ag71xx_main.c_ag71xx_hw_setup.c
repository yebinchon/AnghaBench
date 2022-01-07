
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct device_node {int dummy; } ;
struct ag71xx {int* fifodata; TYPE_2__* pdev; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int AG71XX_REG_FIFO_CFG0 ;
 int AG71XX_REG_FIFO_CFG1 ;
 int AG71XX_REG_FIFO_CFG2 ;
 int AG71XX_REG_FIFO_CFG4 ;
 int AG71XX_REG_FIFO_CFG5 ;
 int AG71XX_REG_MAC_CFG1 ;
 int AG71XX_REG_MAC_CFG2 ;
 int AG71XX_REG_MAC_MFL ;
 int FIFO_CFG0_INIT ;
 int FIFO_CFG4_INIT ;
 int FIFO_CFG5_INIT ;
 int MAC_CFG1_INIT ;
 int MAC_CFG1_RFC ;
 int MAC_CFG1_TFC ;
 int MAC_CFG2_LEN_CHECK ;
 int MAC_CFG2_PAD_CRC_EN ;
 int ag71xx_sb (struct ag71xx*,int ,int) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static void ag71xx_hw_setup(struct ag71xx *ag)
{
 struct device_node *np = ag->pdev->dev.of_node;
 u32 init = MAC_CFG1_INIT;


 if (of_property_read_bool(np, "flow-control"))
  init |= MAC_CFG1_TFC | MAC_CFG1_RFC;
 ag71xx_wr(ag, AG71XX_REG_MAC_CFG1, init);

 ag71xx_sb(ag, AG71XX_REG_MAC_CFG2,
    MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK);


 ag71xx_wr(ag, AG71XX_REG_MAC_MFL, 0);


 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG0, FIFO_CFG0_INIT);
 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG1, ag->fifodata[0]);
 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG2, ag->fifodata[1]);
 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG4, FIFO_CFG4_INIT);
 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG5, FIFO_CFG5_INIT);
}
