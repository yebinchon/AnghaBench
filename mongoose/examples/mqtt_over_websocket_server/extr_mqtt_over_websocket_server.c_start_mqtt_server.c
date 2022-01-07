
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mqtt_broker {int dummy; } ;
struct mg_mgr {int dummy; } ;
struct mg_connection {struct mg_mqtt_broker* user_data; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 struct mg_connection* mg_bind (struct mg_mgr*,char const*,int ) ;
 int mg_mqtt_broker_init (struct mg_mqtt_broker*,int *) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 int mqtt_handler ;
 int printf (char*,char const*) ;
 int stderr ;

__attribute__((used)) static void start_mqtt_server(struct mg_mgr *mgr, const char *addr) {
  struct mg_connection *c;
  static struct mg_mqtt_broker brk;
  if ((c = mg_bind(mgr, addr, mqtt_handler)) == ((void*)0)) {
    fprintf(stderr, "Cannot start MQTT server on port [%s]\n", addr);
    exit(EXIT_FAILURE);
  }
  mg_mqtt_broker_init(&brk, ((void*)0));
  c->user_data = &brk;
  mg_set_protocol_mqtt(c);
  printf("MQTT server started on %s\n", addr);
}
