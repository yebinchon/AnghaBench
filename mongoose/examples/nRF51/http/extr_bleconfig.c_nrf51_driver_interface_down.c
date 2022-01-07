
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADVERTISING_LED ;
 int APPL_LOG (char*) ;
 int APP_ERROR_CHECK (int ) ;
 int DISPLAY_LED_0 ;
 int DISPLAY_LED_1 ;
 int DISPLAY_LED_2 ;
 int DISPLAY_LED_3 ;
 int LEDS_OFF (int) ;
 int LEDS_ON (int ) ;
 int TCP_STATE_DISCONNECTED ;
 int app_timer_stop (int ) ;
 int m_sys_timer_id ;
 int m_tcp_state ;

void nrf51_driver_interface_down(void)
{
  uint32_t err_code;

  APPL_LOG ("[APPL]: IPv6 interface down.\r\n");

  err_code = app_timer_stop(m_sys_timer_id);
  APP_ERROR_CHECK(err_code);

  LEDS_OFF((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  LEDS_ON(ADVERTISING_LED);

  m_tcp_state = TCP_STATE_DISCONNECTED;
}
