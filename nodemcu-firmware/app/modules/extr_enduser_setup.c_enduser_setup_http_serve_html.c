
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
typedef scalar_t__ err_t ;
struct TYPE_2__ {int * http_payload_data; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR (char*,int ,int ) ;
 int ENDUSER_SETUP_ERR_NONFATAL ;
 int ENDUSER_SETUP_ERR_UNKOWN_ERROR ;
 int enduser_setup_http_load_payload () ;
 TYPE_1__* state ;
 int streamout_sent ;
 int tcp_arg (struct tcp_pcb*,void*) ;
 int tcp_recv (struct tcp_pcb*,int ) ;
 int tcp_sent (struct tcp_pcb*,int ) ;
 unsigned int tcp_sndbuf (struct tcp_pcb*) ;
 scalar_t__ tcp_write (struct tcp_pcb*,int *,unsigned int,int ) ;

__attribute__((used)) static int enduser_setup_http_serve_html(struct tcp_pcb *http_client)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_serve_html");

  if (state->http_payload_data == ((void*)0))
  {
    enduser_setup_http_load_payload();
  }

  unsigned chunklen = tcp_sndbuf (http_client);
  tcp_arg (http_client, (void *)chunklen);
  tcp_recv (http_client, 0);
  tcp_sent (http_client, streamout_sent);

  err_t err = tcp_write (http_client, state->http_payload_data, chunklen, 0);
  if (err != 0)
  {
    ENDUSER_SETUP_ERROR("http_serve_html failed. tcp_write failed", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
  }

  return 0;
}
