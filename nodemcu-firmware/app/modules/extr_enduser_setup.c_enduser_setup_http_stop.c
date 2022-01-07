
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ http_pcb; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 TYPE_1__* state ;
 int tcp_close (scalar_t__) ;

__attribute__((used)) static void enduser_setup_http_stop(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_stop");

  if (state && state->http_pcb)
  {
    tcp_close (state->http_pcb);
    state->http_pcb = 0;
  }
}
