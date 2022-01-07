
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mg_connection {int dummy; } ;


 int MG_MQTT_CMD_CONNACK ;
 int mg_send (struct mg_connection*,int *,int) ;
 int mg_send_mqtt_header (struct mg_connection*,int ,int ,int) ;

void mg_mqtt_connack(struct mg_connection *nc, uint8_t return_code) {
  uint8_t unused = 0;
  mg_send_mqtt_header(nc, MG_MQTT_CMD_CONNACK, 0, 2);
  mg_send(nc, &unused, 1);
  mg_send(nc, &return_code, 1);
}
