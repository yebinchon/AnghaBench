
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; } ;
struct mg_connection {int* user_data; int flags; TYPE_1__ recv_mbuf; int (* proto_handler ) (struct mg_connection*,int ,int*) ;TYPE_1__ send_mbuf; int handler; } ;
typedef int msg ;


 int ASSERT (int) ;
 int ASSERT_EQ (int,int) ;
 int MG_EV_RECV ;
 int MG_F_CLOSE_IMMEDIATELY ;
 int MG_MQTT_CMD_PUBLISH ;
 int MG_MQTT_CMD_SUBACK ;
 struct mg_connection* create_test_connection () ;
 int destroy_test_connection (struct mg_connection*) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int mbuf_append (TYPE_1__*,char*,int) ;
 int mbuf_free (TYPE_1__*) ;
 int mbuf_init (TYPE_1__*,int ) ;
 int mbuf_remove (TYPE_1__*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 int mg_mqtt_connack (struct mg_connection*,int ) ;
 int mg_mqtt_publish (struct mg_connection*,char*,int ,int ,char*,int) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 int mqtt_eh ;
 int mqtt_long_payload_len ;
 int mqtt_very_long_payload_len ;
 int stub1 (struct mg_connection*,int ,int*) ;
 int stub2 (struct mg_connection*,int ,int*) ;
 int stub3 (struct mg_connection*,int ,int*) ;
 int stub4 (struct mg_connection*,int ,int*) ;
 int stub5 (struct mg_connection*,int ,int*) ;
 int stub6 (struct mg_connection*,int ,int*) ;
 int stub7 (struct mg_connection*,int ,int*) ;

__attribute__((used)) static const char *test_mqtt_parse_mqtt(void) {
  struct mg_connection *nc = create_test_connection();
  char msg[] = {(char) (MG_MQTT_CMD_SUBACK << 4), 2, 1, 1};
  char *long_msg;
  int check = 0;
  int num_bytes = sizeof(msg), rest_len, i;

  nc->user_data = &check;
  nc->handler = mqtt_eh;
  mg_set_protocol_mqtt(nc);

  mbuf_append(&nc->recv_mbuf, msg, num_bytes);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  ASSERT_EQ(check, 1);
  mbuf_free(&nc->recv_mbuf);


  rest_len = 2 + 6 + mqtt_long_payload_len;
  long_msg = (char *) malloc(512);
  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = (rest_len & 0x7f) | 0x80;
  long_msg[2] = rest_len >> 7;
  memcpy(&long_msg[3], "\0\006/topic", 8);
  memset(&long_msg[11], 'A', mqtt_long_payload_len);

  num_bytes = 3 + rest_len;
  mbuf_append(&nc->recv_mbuf, long_msg, num_bytes);


  for (i = 0; i < num_bytes; i++) {
    check = 123;
    nc->recv_mbuf.len = i;
    nc->proto_handler(nc, MG_EV_RECV, &i);
    ASSERT_EQ((int) nc->recv_mbuf.len, i);
    ASSERT_EQ(check, 123);
  }

  nc->recv_mbuf.len = num_bytes;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);
  ASSERT_EQ(check, 2);
  mbuf_free(&nc->recv_mbuf);
  free(long_msg);


  rest_len = 8 + mqtt_very_long_payload_len;
  long_msg = (char *) malloc(20100);
  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = (rest_len & 127) | 0x80;
  long_msg[2] = ((rest_len >> 7) & 127) | 0x80;
  long_msg[3] = (rest_len >> 14);
  memcpy(&long_msg[4], "\0\006/topic", 8);
  memset(&long_msg[12], 'A', mqtt_very_long_payload_len);

  num_bytes = 4 + rest_len;
  mbuf_append(&nc->recv_mbuf, long_msg, num_bytes);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  ASSERT_EQ(check, 3);
  mbuf_remove(&nc->recv_mbuf, nc->recv_mbuf.len);



  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = 0xff;
  long_msg[2] = 0xff;
  long_msg[3] = 0xff;
  long_msg[4] = 0xff;
  long_msg[5] = 0xff;
  mbuf_append(&nc->recv_mbuf, long_msg, 10);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);
  ASSERT(nc->flags & MG_F_CLOSE_IMMEDIATELY);

  mbuf_free(&nc->recv_mbuf);
  free(long_msg);


  long_msg = (char *) malloc(mqtt_very_long_payload_len);
  memset(long_msg, 'A', mqtt_very_long_payload_len);
  mg_mqtt_publish(nc, "/topic", 0, 0, long_msg, mqtt_very_long_payload_len);
  nc->recv_mbuf = nc->send_mbuf;
  mbuf_init(&nc->send_mbuf, 0);
  num_bytes = nc->recv_mbuf.len;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  ASSERT_EQ(check, 3);
  mbuf_free(&nc->recv_mbuf);
  free(long_msg);


  mg_mqtt_connack(nc, 0);
  nc->recv_mbuf = nc->send_mbuf;
  mbuf_init(&nc->send_mbuf, 0);
  num_bytes = 4;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  ASSERT_EQ(check, 4);
  mbuf_free(&nc->recv_mbuf);

  destroy_test_connection(nc);
  return ((void*)0);
}
