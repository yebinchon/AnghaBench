
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPL_LOG (char*) ;
 int advertising_init () ;
 int advertising_start () ;
 int app_trace_init () ;
 int ble_stack_init () ;
 int ip_stack_init () ;
 int leds_init () ;
 int scheduler_init () ;
 int timers_init () ;

void bleconfig_init(void) {

  app_trace_init();
  leds_init();
  timers_init();
  ble_stack_init();
  advertising_init();
  ip_stack_init ();
  scheduler_init();

  APPL_LOG ("\r\n");
  APPL_LOG ("[APPL]: Init done.\r\n");


  advertising_start();
}
