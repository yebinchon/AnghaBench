
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct TYPE_2__ {int espconn_http_tcp; int http_pcb; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR (char*,int ,int) ;
 int ENDUSER_SETUP_ERR_CONNECTION_NOT_FOUND ;
 int ENDUSER_SETUP_ERR_FATAL ;
 int ENDUSER_SETUP_ERR_NONFATAL ;
 int ENDUSER_SETUP_ERR_NO_RETURN ;
 int ENDUSER_SETUP_ERR_OUT_OF_MEMORY ;
 int ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN ;
 scalar_t__ ERR_OK ;
 int ESPCONN_ARG ;
 int IP_ADDR_ANY ;
 int enduser_setup_http_connectcb ;
 int enduser_setup_http_load_payload () ;
 int err ;
 int espconn_regist_time (int ,int,int ) ;
 TYPE_1__* state ;
 int tcp_abort (struct tcp_pcb*) ;
 int tcp_accept (int ,int ) ;
 scalar_t__ tcp_bind (struct tcp_pcb*,int ,int) ;
 int tcp_listen (struct tcp_pcb*) ;
 struct tcp_pcb* tcp_new () ;

__attribute__((used)) static int enduser_setup_http_start(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_start");
  struct tcp_pcb *pcb = tcp_new ();
  if (pcb == ((void*)0))
  {
    ENDUSER_SETUP_ERROR("http_start failed. Memory allocation failed (http_pcb == NULL).", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  if (tcp_bind (pcb, IP_ADDR_ANY, 80) != ERR_OK)
  {
    ENDUSER_SETUP_ERROR("http_start bind failed", ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, ENDUSER_SETUP_ERR_FATAL);
  }

  state->http_pcb = tcp_listen (pcb);
  if (!state->http_pcb)
  {
    tcp_abort(pcb);
    ENDUSER_SETUP_ERROR("http_start listen failed", ENDUSER_SETUP_ERR_SOCKET_ALREADY_OPEN, ENDUSER_SETUP_ERR_FATAL);
  }

  tcp_accept (state->http_pcb, enduser_setup_http_connectcb);
  int err = enduser_setup_http_load_payload();
  if (err == 1)
  {
    ENDUSER_SETUP_DEBUG("enduser_setup_http_start info. Loaded default HTML.");
  }
  else if (err == 2)
  {
    ENDUSER_SETUP_ERROR("http_start failed. Unable to allocate memory for HTTP payload.", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_FATAL);
  }

  return 0;
}
