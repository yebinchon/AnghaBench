
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_mqtt_proto_data {int dummy; } ;
struct mg_connection {int proto_data_destructor; int proto_data; int proto_handler; } ;


 int MG_CALLOC (int,int) ;
 int mg_mqtt_proto_data_destructor ;
 int mqtt_handler ;

void mg_set_protocol_mqtt(struct mg_connection *nc) {
  nc->proto_handler = mqtt_handler;
  nc->proto_data = MG_CALLOC(1, sizeof(struct mg_mqtt_proto_data));
  nc->proto_data_destructor = mg_mqtt_proto_data_destructor;
}
