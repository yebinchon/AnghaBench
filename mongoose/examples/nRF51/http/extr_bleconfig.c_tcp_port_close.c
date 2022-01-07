
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_pcb {int dummy; } ;


 int CONNECTED_LED ;
 int DISPLAY_LED_0 ;
 int DISPLAY_LED_1 ;
 int DISPLAY_LED_2 ;
 int DISPLAY_LED_3 ;
 int LEDS_OFF (int) ;
 int LEDS_ON (int ) ;
 int TCP_STATE_REQUEST_CONNECTION ;
 int UNUSED_VARIABLE (int ) ;
 int m_tcp_state ;
 int tcp_arg (struct tcp_pcb*,int *) ;
 int tcp_close (struct tcp_pcb*) ;
 int tcp_err (struct tcp_pcb*,int *) ;
 int tcp_poll (struct tcp_pcb*,int *,int ) ;
 int tcp_recv (struct tcp_pcb*,int *) ;
 int tcp_sent (struct tcp_pcb*,int *) ;

__attribute__((used)) static void tcp_port_close(struct tcp_pcb * p_pcb)
{
  m_tcp_state = TCP_STATE_REQUEST_CONNECTION;


  tcp_arg(p_pcb, ((void*)0));
  tcp_sent(p_pcb, ((void*)0));
  tcp_recv(p_pcb, ((void*)0));
  tcp_err(p_pcb, ((void*)0));
  tcp_poll(p_pcb, ((void*)0), 0);

  UNUSED_VARIABLE(tcp_close(p_pcb));

  LEDS_OFF((DISPLAY_LED_0 | DISPLAY_LED_1 | DISPLAY_LED_2 | DISPLAY_LED_3));
  LEDS_ON(CONNECTED_LED);
}
