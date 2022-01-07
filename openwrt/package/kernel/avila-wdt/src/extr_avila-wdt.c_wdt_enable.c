
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP4XX_GPIO_GPCLKR ;
 int IXP4XX_GPIO_LOW ;
 int IXP4XX_GPIO_OUT ;
 int WDT_RUNNING ;
 int atomic_set (int *,int) ;
 int gpio_line_config (int,int ) ;
 int gpio_line_set (int,int ) ;
 int heartbeat ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int wdt_counter ;
 int wdt_refresh (int ) ;
 int wdt_status ;

__attribute__((used)) static void wdt_enable(void)
{
 atomic_set(&wdt_counter, heartbeat * 2);


 *IXP4XX_GPIO_GPCLKR &= ~(1 << 8);


 gpio_line_config(14, IXP4XX_GPIO_OUT);
 gpio_line_set(14, IXP4XX_GPIO_LOW);

 if (!test_bit(WDT_RUNNING, &wdt_status))
  wdt_refresh(0);
 set_bit(WDT_RUNNING, &wdt_status);
}
