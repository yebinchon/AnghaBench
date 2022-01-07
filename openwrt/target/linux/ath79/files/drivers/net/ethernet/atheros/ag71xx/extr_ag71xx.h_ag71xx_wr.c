
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {unsigned int mac_base; } ;


 int __raw_readl (unsigned int) ;
 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void ag71xx_wr(struct ag71xx *ag, unsigned reg, u32 value)
{
 __raw_writel(value, ag->mac_base + reg);

 (void) __raw_readl(ag->mac_base + reg);
}
