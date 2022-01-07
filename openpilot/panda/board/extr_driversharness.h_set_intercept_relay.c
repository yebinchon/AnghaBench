
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* harness_config; } ;
struct TYPE_3__ {int pin_relay_flipped; int GPIO_relay_flipped; int pin_relay_normal; int GPIO_relay_normal; } ;


 scalar_t__ HARNESS_STATUS_NC ;
 scalar_t__ HARNESS_STATUS_NORMAL ;
 scalar_t__ car_harness_status ;
 TYPE_2__* current_board ;
 int puts (char*) ;
 int set_gpio_output (int ,int ,int) ;

void set_intercept_relay(bool intercept) {
  if (car_harness_status != HARNESS_STATUS_NC) {
    if (intercept) {
      puts("switching harness to intercept (relay on)\n");
    } else {
      puts("switching harness to passthrough (relay off)\n");
    }

    if(car_harness_status == HARNESS_STATUS_NORMAL){
      set_gpio_output(current_board->harness_config->GPIO_relay_normal, current_board->harness_config->pin_relay_normal, !intercept);
    } else {
      set_gpio_output(current_board->harness_config->GPIO_relay_flipped, current_board->harness_config->pin_relay_flipped, !intercept);
    }
  }
}
