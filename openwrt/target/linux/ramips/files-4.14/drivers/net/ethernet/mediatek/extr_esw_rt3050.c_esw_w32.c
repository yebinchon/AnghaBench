
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt305x_esw {unsigned int base; } ;


 int __raw_writel (int ,unsigned int) ;

__attribute__((used)) static inline void esw_w32(struct rt305x_esw *esw, u32 val, unsigned reg)
{
 __raw_writel(val, esw->base + reg);
}
