
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw {TYPE_1__* regs; } ;
struct TYPE_2__ {int fs_dma_ctrl0; } ;


 int __raw_writel (int,int *) ;

__attribute__((used)) static void enable_rx_dma(struct sw *sw)
{
 __raw_writel(0x1, &sw->regs->fs_dma_ctrl0);
}
