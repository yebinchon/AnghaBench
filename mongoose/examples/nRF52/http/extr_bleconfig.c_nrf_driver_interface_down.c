
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPL_LOG (char*) ;
 int DISPLAY_LED_0 ;
 int DISPLAY_LED_1 ;
 int DISPLAY_LED_2 ;
 int DISPLAY_LED_3 ;
 int JOINING_MODE_TIMER_START ;
 int LEDS_OFF (int) ;
 int LEDS_ON (int ) ;
 int LED_ONE ;
 int TCP_STATE_DISCONNECTED ;
 int commissioning_joining_mode_timer_ctrl (int ) ;
 int m_tcp_state ;

void nrf_driver_interface_down(void)
{




  APPL_LOG ("[APPL]: IPv6 interface down.\r\n");

  LEDS_OFF((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  LEDS_ON(LED_ONE);

  m_tcp_state = TCP_STATE_DISCONNECTED;
}
