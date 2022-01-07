
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_send_mqtt_handshake_opts {char const* will_topic; char const* will_message; char const* user_name; char const* password; int keep_alive; } ;
struct mg_mqtt_proto_data {char const keep_alive; int last_control_time; } ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; scalar_t__ proto_data; } ;
typedef int opts ;


 int ASSERT_EQ (char const,int) ;
 int ASSERT_GT (int ,double) ;
 int ASSERT_STREQ_NZ (char const*,char*) ;
 struct mg_connection* create_test_connection () ;
 int destroy_test_connection (struct mg_connection*) ;
 int mbuf_remove (TYPE_1__*,char const) ;
 int memset (struct mg_send_mqtt_handshake_opts*,int ,int) ;
 int mg_send_mqtt_handshake (struct mg_connection*,char const*) ;
 int mg_send_mqtt_handshake_opt (struct mg_connection*,char const*,struct mg_send_mqtt_handshake_opts) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 double mg_time () ;
 int msleep (int) ;
 int strlen (char const*) ;
 char const strncmp (char const*,char const*,int) ;

__attribute__((used)) static const char *test_mqtt_handshake(void) {
  struct mg_send_mqtt_handshake_opts opts;
  struct mg_connection *nc = create_test_connection();
  const char *client_id = "testclient";
  const char *user_name = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
  const char *password = "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
  const char *will_topic = "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
  const char *will_message = "DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD";
  double before = mg_time();
  const char *got;

  msleep(2);
  mg_set_protocol_mqtt(nc);
  mg_send_mqtt_handshake(nc, client_id);
  got = nc->send_mbuf.buf;

  ASSERT_EQ(nc->send_mbuf.len,
            1 + 1 + 1 + 5 + 1 + 1 + 2 + 2 + strlen(client_id));
  ASSERT_EQ(got[0], 0x10);
  ASSERT_EQ(got[1], (int) nc->send_mbuf.len - 2);
  ASSERT_EQ(got[2], 0);
  ASSERT_EQ(got[3], 4);
  ASSERT_STREQ_NZ(&got[4], "MQTT");
  ASSERT_EQ(got[8], 4);
  ASSERT_EQ(got[9], 0);
  ASSERT_EQ(got[10], 0);
  ASSERT_EQ(got[11], 60);
  ASSERT_EQ(got[12], 0);
  ASSERT_EQ(got[13], (char) strlen(client_id));
  ASSERT_EQ(strncmp(&got[14], client_id, strlen(client_id)), 0);
  ASSERT_EQ(((struct mg_mqtt_proto_data *) nc->proto_data)->keep_alive, 60);
  ASSERT_GT(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);
  mbuf_remove(&nc->send_mbuf, nc->send_mbuf.len);

  memset(&opts, 0, sizeof(opts));
  before = mg_time();
  msleep(2);
  opts.will_topic = will_topic;
  opts.will_message = will_message;
  opts.user_name = user_name;
  opts.password = password;
  opts.keep_alive = 0x1234;
  mg_send_mqtt_handshake_opt(nc, client_id, opts);
  got = nc->send_mbuf.buf;

  ASSERT_EQ(nc->send_mbuf.len, 1 + 2 + 1 + 5 + 1 + 1 + 2 + 2 +
                                   strlen(client_id) + 2 + strlen(will_topic) +
                                   2 + strlen(will_message) + 2 +
                                   strlen(user_name) + 2 + strlen(password));
  ASSERT_EQ(got[0], 0x10);
  ASSERT_EQ(((unsigned char *) got)[1], 223);
  ASSERT_EQ(got[2], 1);
  ASSERT_EQ(got[3], 0);
  ASSERT_EQ(got[4], 4);
  ASSERT_STREQ_NZ(&got[5], "MQTT");
  ASSERT_EQ(got[9], 4);
  ASSERT_EQ(((unsigned char *) got)[10], 0xc4);
  ASSERT_EQ(got[11], 0x12);
  ASSERT_EQ(got[12], 0x34);
  ASSERT_EQ(got[13], 0);
  ASSERT_EQ(got[14], (char) strlen(client_id));
  ASSERT_EQ(strncmp(&got[15], client_id, strlen(client_id)), 0);
  ASSERT_EQ(((struct mg_mqtt_proto_data *) nc->proto_data)->keep_alive, 0x1234);
  ASSERT_GT(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);
  mbuf_remove(&nc->send_mbuf, nc->send_mbuf.len);

  destroy_test_connection(nc);
  return ((void*)0);
}
