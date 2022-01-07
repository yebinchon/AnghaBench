
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int MG_MQTT_CMD_DISCONNECT ;
 int mg_send_mqtt_header (struct mg_connection*,int ,int ,int ) ;

void mg_mqtt_disconnect(struct mg_connection *nc) {
  mg_send_mqtt_header(nc, MG_MQTT_CMD_DISCONNECT, 0, 0);
}
