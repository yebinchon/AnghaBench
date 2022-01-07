
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIOC ;
 int LED_GREEN ;
 int LED_RED ;
 int MODE_ANALOG ;
 int common_init_gpio () ;
 int pedal_enable_can_transcievers (int) ;
 int pedal_set_led (int ,int) ;
 int set_gpio_mode (int ,int,int ) ;

void pedal_init(void) {
  common_init_gpio();


  set_gpio_mode(GPIOC, 0, MODE_ANALOG);
  set_gpio_mode(GPIOC, 1, MODE_ANALOG);




  pedal_enable_can_transcievers(1);


  pedal_set_led(LED_RED, 0);
  pedal_set_led(LED_GREEN, 0);
}
