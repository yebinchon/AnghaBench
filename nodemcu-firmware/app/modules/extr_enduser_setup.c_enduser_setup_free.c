
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* udp; } ;
struct TYPE_5__ {struct TYPE_5__* http_payload_data; struct TYPE_5__* espconn_dns_udp; TYPE_1__ proto; int shutdown_timer; int check_station_timer; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int free (TYPE_2__*) ;
 int free_scan_listeners () ;
 int os_timer_disarm (int *) ;
 TYPE_2__* state ;

__attribute__((used)) static void enduser_setup_free(void)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_free");

  if (state == ((void*)0))
  {
    return;
  }


  os_timer_disarm(&(state->check_station_timer));
  os_timer_disarm(&(state->shutdown_timer));

  if (state->espconn_dns_udp != ((void*)0))
  {
    if (state->espconn_dns_udp->proto.udp != ((void*)0))
    {
      free(state->espconn_dns_udp->proto.udp);
    }
    free(state->espconn_dns_udp);
  }

  free(state->http_payload_data);

  free_scan_listeners ();

  free(state);
  state = ((void*)0);
}
