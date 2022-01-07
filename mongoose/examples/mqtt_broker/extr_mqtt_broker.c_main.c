
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mqtt_broker {int dummy; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct mg_mqtt_broker* priv_2; } ;


 int EXIT_FAILURE ;
 int ev_handler ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char*,int ) ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 int mg_mqtt_broker_init (struct mg_mqtt_broker*,int *) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 int printf (char*,char*) ;
 char* s_listening_address ;
 int stderr ;

int main(void) {
  struct mg_mgr mgr;
  struct mg_connection *c;
  struct mg_mqtt_broker brk;

  mg_mgr_init(&mgr, ((void*)0));

  if ((c = mg_bind(&mgr, s_listening_address, ev_handler)) == ((void*)0)) {
    fprintf(stderr, "mg_bind(%s) failed\n", s_listening_address);
    exit(EXIT_FAILURE);
  }
  mg_mqtt_broker_init(&brk, ((void*)0));
  c->priv_2 = &brk;
  mg_set_protocol_mqtt(c);

  printf("MQTT broker started on %s\n", s_listening_address);






  for (;;) {
    mg_mgr_poll(&mgr, 1000);
  }
}
