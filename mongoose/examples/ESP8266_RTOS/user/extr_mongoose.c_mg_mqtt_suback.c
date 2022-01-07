
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct mg_connection {int dummy; } ;


 int MG_MQTT_CMD_SUBACK ;
 int MG_MQTT_QOS (int) ;
 int htons (int ) ;
 int mg_send (struct mg_connection*,int *,int) ;
 int mg_send_mqtt_header (struct mg_connection*,int ,int ,int) ;

void mg_mqtt_suback(struct mg_connection *nc, uint8_t *qoss, size_t qoss_len,
                    uint16_t message_id) {
  size_t i;
  uint16_t netbytes;

  mg_send_mqtt_header(nc, MG_MQTT_CMD_SUBACK, MG_MQTT_QOS(1), 2 + qoss_len);

  netbytes = htons(message_id);
  mg_send(nc, &netbytes, 2);

  for (i = 0; i < qoss_len; i++) {
    mg_send(nc, &qoss[i], 1);
  }
}
