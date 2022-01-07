
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPL_LOG (char*) ;
 int JOINING_MODE_TIMER_STOP_RESET ;
 int LEDS_OFF (int ) ;
 int LEDS_ON (int ) ;
 int LED_ONE ;
 int LED_TWO ;
 int TCP_STATE_REQUEST_CONNECTION ;
 int commissioning_joining_mode_timer_ctrl (int ) ;
 int m_tcp_state ;
 int sys_check_timeouts () ;

void nrf_driver_interface_up(void)
{




  APPL_LOG ("[APPL]: IPv6 interface up.\r\n");

  sys_check_timeouts();

  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;

  LEDS_OFF(LED_ONE);
  LEDS_ON(LED_TWO);
}
