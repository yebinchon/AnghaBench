
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct mg_connection {int dummy; } ;


 scalar_t__ MG_MQTT_CMD_PUBREL ;
 int htons (int ) ;
 int mg_send (struct mg_connection*,int *,int) ;
 int mg_send_mqtt_header (struct mg_connection*,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static void mg_send_mqtt_short_command(struct mg_connection *nc, uint8_t cmd,
                                       uint16_t message_id) {
  uint16_t netbytes;
  uint8_t flags = (cmd == MG_MQTT_CMD_PUBREL ? 2 : 0);

  mg_send_mqtt_header(nc, cmd, flags, 2 );

  netbytes = htons(message_id);
  mg_send(nc, &netbytes, 2);
}
