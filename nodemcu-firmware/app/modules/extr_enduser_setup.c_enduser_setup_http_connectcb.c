
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
typedef int err_t ;
struct TYPE_2__ {int http_pcb; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ERR_ABRT ;
 int ERR_OK ;
 int enduser_setup_http_recvcb ;
 TYPE_1__* state ;
 int tcp_abort (struct tcp_pcb*) ;
 int tcp_accepted (int ) ;
 int tcp_nagle_disable (struct tcp_pcb*) ;
 int tcp_recv (struct tcp_pcb*,int ) ;

__attribute__((used)) static err_t enduser_setup_http_connectcb(void *arg, struct tcp_pcb *pcb, err_t err)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_connectcb");

  if (!state)
  {
    ENDUSER_SETUP_DEBUG("connect callback but no state?!");
    tcp_abort (pcb);
    return ERR_ABRT;
  }

  tcp_accepted (state->http_pcb);
  tcp_recv (pcb, enduser_setup_http_recvcb);
  tcp_nagle_disable (pcb);
  return ERR_OK;
}
