
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt305x_esw {unsigned int base; } ;


 int __raw_readl (unsigned int) ;

__attribute__((used)) static inline u32 esw_r32(struct rt305x_esw *esw, unsigned reg)
{
 return __raw_readl(esw->base + reg);
}
