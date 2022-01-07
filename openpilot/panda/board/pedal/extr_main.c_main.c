
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init ) () ;} ;


 int CAN1 ;
 int NVIC_EnableIRQ (int ) ;
 int TIM3 ;
 int TIM3_IRQn ;
 int adc_init () ;
 int clock_init () ;
 TYPE_1__* current_board ;
 int dac_init () ;
 int detect_board_type () ;
 int detect_configuration () ;
 int disable_interrupts () ;
 int enable_interrupts () ;
 int llcan_init (int ) ;
 int llcan_set_speed (int ,int,int,int) ;
 int pedal () ;
 int peripherals_init () ;
 int puts (char*) ;
 int stub1 () ;
 int timer_init (int ,int) ;
 int usb_init () ;
 int watchdog_init () ;

int main(void) {
  disable_interrupts();


  clock_init();
  peripherals_init();
  detect_configuration();
  detect_board_type();


  current_board->init();







  dac_init();
  adc_init();


  bool llcan_speed_set = llcan_set_speed(CAN1, 5000, 0, 0);
  if (!llcan_speed_set) {
    puts("Failed to set llcan speed");
  }

  llcan_init(CAN1);


  timer_init(TIM3, 15);
  NVIC_EnableIRQ(TIM3_IRQn);

  watchdog_init();

  puts("**** INTERRUPTS ON ****\n");
  enable_interrupts();


  while (1) {
    pedal();
  }

  return 0;
}
