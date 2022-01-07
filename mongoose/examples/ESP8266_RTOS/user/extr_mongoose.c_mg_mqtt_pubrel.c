
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct mg_connection {int dummy; } ;


 int MG_MQTT_CMD_PUBREL ;
 int mg_send_mqtt_short_command (struct mg_connection*,int ,int ) ;

void mg_mqtt_pubrel(struct mg_connection *nc, uint16_t message_id) {
  mg_send_mqtt_short_command(nc, MG_MQTT_CMD_PUBREL, message_id);
}
