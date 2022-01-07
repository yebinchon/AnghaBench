
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLATFORM_GPIO_HIGH ;
 int m_spi_no ;
 int m_ss_pin ;
 int platform_gpio_write (int ,int ) ;
 int platform_spi_send_recv (int ,int,int) ;

__attribute__((used)) static void sdcard_chipselect_high( void ) {
  platform_gpio_write( m_ss_pin, PLATFORM_GPIO_HIGH );

  platform_spi_send_recv( m_spi_no, 8, 0xff );
}
