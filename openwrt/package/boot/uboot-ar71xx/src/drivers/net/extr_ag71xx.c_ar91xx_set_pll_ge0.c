
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR91XX_ETH0_PLL_SHIFT ;
 int AR91XX_PLL_REG_ETH0_INT_CLOCK ;
 int AR91XX_PLL_REG_ETH_CONFIG ;
 int BUG () ;



 int ar71xx_set_pll (int ,int ,int,int ) ;

__attribute__((used)) static void ar91xx_set_pll_ge0(int speed)
{

 u32 pll_val;

 switch (speed) {
 case 130:
  pll_val = 0x00441099;
  break;
 case 129:
  pll_val = 0x13000a44;
  break;
 case 128:
  pll_val = 0x1a000000;
  break;
 default:
  BUG();
 }

 ar71xx_set_pll(AR91XX_PLL_REG_ETH_CONFIG, AR91XX_PLL_REG_ETH0_INT_CLOCK,
    pll_val, AR91XX_ETH0_PLL_SHIFT);
}
