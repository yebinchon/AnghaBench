
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CFGR1; } ;


 TYPE_1__* SYSCFG ;
 int SYSCFG_CFGR1_I2C1_DMA_RMP ;
 int SYSCFG_CFGR1_SPI2_DMA_RMP ;

void boardInit(void) {
  SYSCFG->CFGR1 |= SYSCFG_CFGR1_I2C1_DMA_RMP;
  SYSCFG->CFGR1 &= ~(SYSCFG_CFGR1_SPI2_DMA_RMP);
}
