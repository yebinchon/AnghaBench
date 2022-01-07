
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLL_BWADJ_SHIFT ;
 int PLL_BYPASS ;
 int PLL_OUTDIV_SHIFT ;
 int PLL_REFDIV_SHIFT ;
 int SAT_ENABLE ;
 int SYS_CTRL_PLLA_CTRL0 ;
 int SYS_CTRL_PLLA_CTRL1 ;
 int SYS_CTRL_PLLA_CTRL2 ;
 int SYS_CTRL_PLLA_CTRL3 ;
 int SYS_CTRL_RST_PLLA ;
 int clrbits_le32 (int ,int) ;
 int printf (char*,int) ;
 int puts (char*) ;
 int readl (int ) ;
 int reset_block (int ,int) ;
 int setbits_le32 (int ,int) ;
 int udelay (int) ;
 int writel (int,int ) ;

__attribute__((used)) static void plla_configure(int outdiv, int refdiv, int fbdiv, int bwadj,
                           int sfreq, int sslope)
{
 setbits_le32(SYS_CTRL_PLLA_CTRL0, PLL_BYPASS);
 udelay(10);
 reset_block(SYS_CTRL_RST_PLLA, 1);
 udelay(10);

 writel((refdiv << PLL_REFDIV_SHIFT) | (outdiv << PLL_OUTDIV_SHIFT) |
        SAT_ENABLE | PLL_BYPASS,
        SYS_CTRL_PLLA_CTRL0);

 writel(fbdiv, SYS_CTRL_PLLA_CTRL1);
 writel((bwadj << PLL_BWADJ_SHIFT) | sfreq, SYS_CTRL_PLLA_CTRL2);
 writel(sslope, SYS_CTRL_PLLA_CTRL3);

 udelay(10);

 reset_block(SYS_CTRL_RST_PLLA, 0);

 udelay(100);

 printf("  plla_ctrl0 : %08x\n", readl(SYS_CTRL_PLLA_CTRL0));
 printf("  plla_ctrl1 : %08x\n", readl(SYS_CTRL_PLLA_CTRL1));
 printf("  plla_ctrl2 : %08x\n", readl(SYS_CTRL_PLLA_CTRL2));
 printf("  plla_ctrl3 : %08x\n", readl(SYS_CTRL_PLLA_CTRL3));

 clrbits_le32(SYS_CTRL_PLLA_CTRL0, PLL_BYPASS);
 puts("\nPLLA Set\n");
}
