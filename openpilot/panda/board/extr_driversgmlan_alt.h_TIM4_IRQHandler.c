
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SR; scalar_t__ CR1; scalar_t__ DIER; } ;


 scalar_t__ BITBANG ;
 scalar_t__ DISABLED ;
 int GMLAN_LOW ;
 scalar_t__ GMLAN_TICKS_PER_TIMEOUT_TICKLE ;
 int GPIOB ;
 scalar_t__ GPIO_SWITCH ;
 scalar_t__ MAX_FAIL_COUNT ;
 int MODE_INPUT ;
 scalar_t__ REQUIRED_SILENT_TIME ;
 TYPE_1__* TIM4 ;
 int TIM_SR_UIF ;
 scalar_t__ can_timeout_counter ;
 int get_gpio_input (int ,int) ;
 scalar_t__ gmlan_alt_mode ;
 scalar_t__ gmlan_fail_count ;
 int gmlan_send_ok ;
 int gmlan_sending ;
 int gmlan_sendmax ;
 scalar_t__ gmlan_silent_count ;
 int gmlan_switch_below_timeout ;
 scalar_t__ gmlan_switch_timeout_enable ;
 scalar_t__ gmlan_timeout_counter ;
 int inverted_bit_to_send ;
 int* pkt_stuffed ;
 int puth (int) ;
 int puts (char*) ;
 int set_bitbanged_gmlan (int) ;
 int set_gpio_mode (int ,int,int ) ;
 int set_gpio_output (int ,int,int ) ;

void TIM4_IRQHandler(void) {
  if (gmlan_alt_mode == BITBANG) {
    if ((TIM4->SR & TIM_SR_UIF) && (gmlan_sendmax != -1)) {
      int read = get_gpio_input(GPIOB, 12);
      if (gmlan_silent_count < REQUIRED_SILENT_TIME) {
        if (read == 0) {
          gmlan_silent_count = 0;
        } else {
          gmlan_silent_count++;
        }
      } else {
        bool retry = 0;

        if ((gmlan_sending > 0) &&
           ((read == 0) && (pkt_stuffed[gmlan_sending-1] == 1)) &&
           (gmlan_sending != (gmlan_sendmax - 11))) {
          puts("GMLAN ERR: bus driven at ");
          puth(gmlan_sending);
          puts("\n");
          retry = 1;
        } else if ((read == 1) && (gmlan_sending == (gmlan_sendmax - 11))) {
          puts("GMLAN ERR: didn't recv ACK\n");
          retry = 1;
        } else {

        }
        if (retry) {

          set_bitbanged_gmlan(1);
          gmlan_silent_count = 0;
          gmlan_sending = 0;
          gmlan_fail_count++;
          if (gmlan_fail_count == MAX_FAIL_COUNT) {
            puts("GMLAN ERR: giving up send\n");
            gmlan_send_ok = 0;
          }
        } else {
          set_bitbanged_gmlan(pkt_stuffed[gmlan_sending]);
          gmlan_sending++;
        }
      }
      if ((gmlan_sending == gmlan_sendmax) || (gmlan_fail_count == MAX_FAIL_COUNT)) {
        set_bitbanged_gmlan(1);
        set_gpio_mode(GPIOB, 13, MODE_INPUT);
        TIM4->DIER = 0;
        TIM4->CR1 = 0;
        gmlan_sendmax = -1;
      }
    }
    TIM4->SR = 0;
  } else if (gmlan_alt_mode == GPIO_SWITCH) {
    if ((TIM4->SR & TIM_SR_UIF) && (gmlan_switch_below_timeout != -1)) {
      if ((can_timeout_counter == 0) && gmlan_switch_timeout_enable) {

        set_gpio_output(GPIOB, 13, GMLAN_LOW);
        gmlan_switch_below_timeout = -1;
        gmlan_timeout_counter = GMLAN_TICKS_PER_TIMEOUT_TICKLE;
        gmlan_alt_mode = DISABLED;
      }
      else {
        can_timeout_counter--;
        if (gmlan_timeout_counter == 0) {

          gmlan_timeout_counter = GMLAN_TICKS_PER_TIMEOUT_TICKLE;
          set_gpio_output(GPIOB, 13, GMLAN_LOW);
        }
        else {
          set_gpio_output(GPIOB, 13, inverted_bit_to_send);
          gmlan_timeout_counter--;
        }
      }
    }
    TIM4->SR = 0;
  } else {
    puts("invalid gmlan_alt_mode\n");
  }
}
