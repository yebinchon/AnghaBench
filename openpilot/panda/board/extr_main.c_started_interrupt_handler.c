
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint8_t ;
struct TYPE_4__ {unsigned int PR; } ;
struct TYPE_3__ {int (* set_usb_power_mode ) (int ) ;} ;


 TYPE_2__* EXTI ;
 int POWER_SAVE_STATUS_DISABLED ;
 int POWER_SAVE_STATUS_ENABLED ;
 int USB_POWER_CDP ;
 scalar_t__ check_started () ;
 TYPE_1__* current_board ;
 int delay (int) ;
 int puts (char*) ;
 int set_power_save_state (int) ;
 int stub1 (int ) ;

void started_interrupt_handler(uint8_t interrupt_line) {
  volatile unsigned int pr = EXTI->PR & (1U << interrupt_line);
  if ((pr & (1U << interrupt_line)) != 0U) {





    delay(100000);
  }
  EXTI->PR = (1U << interrupt_line);
}
