
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct ag71xx {int mii_base; } ;


 unsigned int AR71XX_MII_CTRL_IF_MASK ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void ath79_mii_ctrl_set_if(struct ag71xx *ag, unsigned int mii_if)
{
 u32 t;

 t = __raw_readl(ag->mii_base);
 t &= ~(AR71XX_MII_CTRL_IF_MASK);
 t |= (mii_if & AR71XX_MII_CTRL_IF_MASK);
 __raw_writel(t, ag->mii_base);
}
