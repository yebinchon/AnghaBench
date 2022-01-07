
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int readl (void*) ;
 int writel (int ,void*) ;

__attribute__((used)) static inline void rwl(void *reg, uint32_t rst, uint32_t set)
{
 uint32_t r;
 r = readl(reg);
 r &= ~rst;
 r |= set;
 writel(r, reg);
}
