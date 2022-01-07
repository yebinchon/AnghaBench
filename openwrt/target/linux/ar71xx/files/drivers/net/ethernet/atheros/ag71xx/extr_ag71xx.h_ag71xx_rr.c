
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {unsigned int mac_base; } ;


 int __raw_readl (unsigned int) ;
 int ag71xx_check_reg_offset (struct ag71xx*,unsigned int) ;

__attribute__((used)) static inline u32 ag71xx_rr(struct ag71xx *ag, unsigned reg)
{
 ag71xx_check_reg_offset(ag, reg);

 return __raw_readl(ag->mac_base + reg);
}
