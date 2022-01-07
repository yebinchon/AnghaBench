
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADVERTISING_LED ;
 int APPL_LOG (char*) ;
 int APP_ERROR_CHECK (int ) ;
 int CONNECTED_LED ;
 int LEDS_OFF (int ) ;
 int LEDS_ON (int ) ;
 int LWIP_SYS_TIMER_INTERVAL ;
 int TCP_STATE_REQUEST_CONNECTION ;
 int app_timer_start (int ,int ,int *) ;
 int m_sys_timer_id ;
 int m_tcp_state ;
 int sys_check_timeouts () ;

void nrf51_driver_interface_up(void)
{
  uint32_t err_code;

  APPL_LOG ("[APPL]: IPv6 interface up.\r\n");

  sys_check_timeouts();

  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;

  err_code = app_timer_start(m_sys_timer_id, LWIP_SYS_TIMER_INTERVAL, ((void*)0));
  APP_ERROR_CHECK(err_code);

  LEDS_OFF(ADVERTISING_LED);
  LEDS_ON(CONNECTED_LED);
}
