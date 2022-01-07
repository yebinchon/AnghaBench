
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * espconn_dns_udp; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int espconn_delete (int *) ;
 TYPE_1__* state ;

__attribute__((used)) static void enduser_setup_dns_stop(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_dns_stop");

  if (state != ((void*)0) && state->espconn_dns_udp != ((void*)0))
  {
    espconn_delete(state->espconn_dns_udp);
  }
}
