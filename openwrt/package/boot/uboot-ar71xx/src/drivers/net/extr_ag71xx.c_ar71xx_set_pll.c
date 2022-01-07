
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;


 int AR71XX_PLL_BASE ;
 int KSEG1ADDR (int ) ;
 int debug (char*,unsigned int,int) ;
 int readl (int) ;
 int udelay (int) ;
 int writel (int,int) ;

__attribute__((used)) static void ar71xx_set_pll(u32 cfg_reg, u32 pll_reg, u32 pll_val, u32 shift)
{
 uint32_t base = KSEG1ADDR(AR71XX_PLL_BASE);
 u32 t;

 t = readl(base + cfg_reg);
 t &= ~(3 << shift);
 t |= (2 << shift);
 writel(t, base + cfg_reg);
 udelay(100);

 writel(pll_val, base + pll_reg);

 t |= (3 << shift);
 writel(t, base + cfg_reg);
 udelay(100);

 t &= ~(3 << shift);
 writel(t, base + cfg_reg);
 udelay(100);

 debug("ar71xx: pll_reg %#x: %#x\n", (unsigned int)(base + pll_reg),
       readl(base + pll_reg));
}
