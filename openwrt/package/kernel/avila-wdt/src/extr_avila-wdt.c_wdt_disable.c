
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP4XX_GPIO_GPCLKR ;

__attribute__((used)) static void wdt_disable(void)
{

 *IXP4XX_GPIO_GPCLKR |= (1 << 8);
}
