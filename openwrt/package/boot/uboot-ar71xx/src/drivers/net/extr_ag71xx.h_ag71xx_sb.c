
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int u32 ;
struct ag71xx {unsigned int mac_base; } ;


 int __raw_readl (unsigned int) ;
 int __raw_writel (int,unsigned int) ;

__attribute__((used)) static inline void ag71xx_sb(struct ag71xx *ag, unsigned reg, u32 mask)
{
 uint32_t r;

 r = ag->mac_base + reg;
 __raw_writel(__raw_readl(r) | mask, r);

 (void)__raw_readl(r);
}
