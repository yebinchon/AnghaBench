
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GMLAN_LOW ;
 int GPIOB ;
 int GPIO_SWITCH ;
 int MODE_OUTPUT ;
 int gmlan_alt_mode ;
 int gmlan_switch_below_timeout ;
 int gmlan_switch_timeout_enable ;
 int inverted_bit_to_send ;
 int set_gpio_mode (int ,int,int ) ;
 int setup_timer4 () ;

void gmlan_switch_init(int timeout_enable) {
  gmlan_switch_timeout_enable = timeout_enable;
  gmlan_alt_mode = GPIO_SWITCH;
  gmlan_switch_below_timeout = 1;
  set_gpio_mode(GPIOB, 13, MODE_OUTPUT);

  setup_timer4();

  inverted_bit_to_send = GMLAN_LOW;
}
