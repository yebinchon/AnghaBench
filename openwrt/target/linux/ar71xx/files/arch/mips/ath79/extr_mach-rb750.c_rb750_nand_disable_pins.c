
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AR724X_GPIO_FUNC_JTAG_DISABLE ;
 int AR724X_GPIO_FUNC_SPI_EN ;
 int RB750_LVC573_LE ;
 int ath79_gpio_function_setup (int ,int ) ;
 int rb750_latch_change (int ,int ) ;

__attribute__((used)) static void rb750_nand_disable_pins(void)
{
 ath79_gpio_function_setup(AR724X_GPIO_FUNC_SPI_EN,
      AR724X_GPIO_FUNC_JTAG_DISABLE);
 rb750_latch_change(0, RB750_LVC573_LE);
}
