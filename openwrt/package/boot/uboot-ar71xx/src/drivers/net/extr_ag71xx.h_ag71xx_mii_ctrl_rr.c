
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ag71xx {int mii_ctrl; } ;


 int __raw_readl (int ) ;

__attribute__((used)) static inline u32 ag71xx_mii_ctrl_rr(struct ag71xx *ag)
{
 return __raw_readl(ag->mii_ctrl);
}
