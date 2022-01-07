
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {TYPE_1__* harness_config; int (* set_led ) (int ,int) ;} ;
struct TYPE_3__ {int pin_SBU1; int GPIO_SBU1; int pin_SBU2; int GPIO_SBU2; } ;


 scalar_t__ HARNESS_STATUS_NC ;
 scalar_t__ HARNESS_STATUS_NORMAL ;
 int LED_BLUE ;
 int MODE_INPUT ;
 scalar_t__ car_harness_status ;
 TYPE_2__* current_board ;
 int delay (int) ;
 scalar_t__ harness_detect_orientation () ;
 int harness_setup_ignition_interrupts () ;
 int puth2 (scalar_t__) ;
 int puts (char*) ;
 int set_gpio_mode (int ,int ,int ) ;
 int set_intercept_relay (int) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

void harness_init(void) {

  current_board->set_led(LED_BLUE, 1);
  delay(10000000);
  current_board->set_led(LED_BLUE, 0);


  uint8_t ret = harness_detect_orientation();
  if (ret != HARNESS_STATUS_NC) {
    puts("detected car harness with orientation "); puth2(ret); puts("\n");
    car_harness_status = ret;


    set_gpio_mode(current_board->harness_config->GPIO_SBU1, current_board->harness_config->pin_SBU1, MODE_INPUT);
    set_gpio_mode(current_board->harness_config->GPIO_SBU2, current_board->harness_config->pin_SBU2, MODE_INPUT);


    if(car_harness_status == HARNESS_STATUS_NORMAL){
      set_gpio_mode(current_board->harness_config->GPIO_SBU2, current_board->harness_config->pin_SBU2, MODE_INPUT);
    } else {
      set_gpio_mode(current_board->harness_config->GPIO_SBU1, current_board->harness_config->pin_SBU1, MODE_INPUT);
    }


    set_intercept_relay(0);


    harness_setup_ignition_interrupts();
  } else {
    puts("failed to detect car harness!\n");
  }
}
