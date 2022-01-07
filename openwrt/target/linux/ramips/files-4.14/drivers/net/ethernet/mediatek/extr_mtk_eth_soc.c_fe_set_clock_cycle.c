
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fe_priv {unsigned long sysclk; } ;


 int FE_FE_GLO_CFG ;
 unsigned long FE_US_CYC_CNT_DIVISOR ;
 unsigned long FE_US_CYC_CNT_MASK ;
 unsigned long FE_US_CYC_CNT_SHIFT ;
 unsigned long fe_r32 (int ) ;
 int fe_w32 (unsigned long,int ) ;

int fe_set_clock_cycle(struct fe_priv *priv)
{
 unsigned long sysclk = priv->sysclk;

 sysclk /= FE_US_CYC_CNT_DIVISOR;
 sysclk <<= FE_US_CYC_CNT_SHIFT;

 fe_w32((fe_r32(FE_FE_GLO_CFG) &
   ~(FE_US_CYC_CNT_MASK << FE_US_CYC_CNT_SHIFT)) |
   sysclk,
   FE_FE_GLO_CFG);
 return 0;
}
