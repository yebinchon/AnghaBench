
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_GPIO_LOW ;
 int m_ss_pin ;
 int platform_gpio_write (int ,int ) ;

__attribute__((used)) static void sdcard_chipselect_low( void ) {
  platform_gpio_write( m_ss_pin, PLATFORM_GPIO_LOW );
}
