
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16_t ;
typedef void tcp_pcb ;
typedef int err_t ;


 int ERR_OK ;
 int TCP_STATE_CONNECTED ;
 int UNUSED_PARAMETER (void*) ;
 int m_tcp_state ;
 int mp_tcp_port ;
 int tcp_port_close (int ) ;

__attribute__((used)) static err_t tcp_write_complete(void * p_arg,
    struct tcp_pcb * p_pcb,
    u16_t len)
{
  UNUSED_PARAMETER(p_arg);
  UNUSED_PARAMETER(p_pcb);

  if (len != 0)
  {

    m_tcp_state = TCP_STATE_CONNECTED;
  }
  else
  {

    tcp_port_close(mp_tcp_port);
  }
  return ERR_OK;
}
