
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int MG_EV_POLL ;
 int mg_mqtt_broker (struct mg_connection*,int,void*) ;
 int printf (char*,int) ;

__attribute__((used)) static void ev_handler(struct mg_connection *c, int ev, void *ev_data) {
  if (ev != MG_EV_POLL) printf("USER HANDLER GOT EVENT %d\n", ev);

  mg_mqtt_broker(c, ev, ev_data);
}
