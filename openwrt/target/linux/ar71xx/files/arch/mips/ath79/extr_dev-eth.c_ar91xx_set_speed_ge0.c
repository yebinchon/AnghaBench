
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR71XX_MII_REG_MII0_CTRL ;
 int AR913X_ETH0_PLL_SHIFT ;
 int AR913X_PLL_REG_ETH0_INT_CLOCK ;
 int AR913X_PLL_REG_ETH_CONFIG ;
 int ath79_get_eth_pll (int ,int) ;
 int ath79_mii_ctrl_set_speed (int ,int) ;
 int ath79_set_pll (int ,int ,int ,int ) ;

__attribute__((used)) static void ar91xx_set_speed_ge0(int speed)
{
 u32 val = ath79_get_eth_pll(0, speed);

 ath79_set_pll(AR913X_PLL_REG_ETH_CONFIG, AR913X_PLL_REG_ETH0_INT_CLOCK,
    val, AR913X_ETH0_PLL_SHIFT);
 ath79_mii_ctrl_set_speed(AR71XX_MII_REG_MII0_CTRL, speed);
}
