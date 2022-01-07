
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_mqtt_proto_data {int last_control_time; } ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {scalar_t__ proto_data; TYPE_1__ send_mbuf; } ;


 int ASSERT_EQ (char const,int) ;
 int ASSERT_GT (int ,double const) ;
 int ASSERT_STREQ_NZ (char const*,char*) ;
 int MG_MQTT_CMD_UNSUBSCRIBE ;
 struct mg_connection* create_test_connection () ;
 int destroy_test_connection (struct mg_connection*) ;
 int mg_mqtt_unsubscribe (struct mg_connection*,char**,int,int) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;
 double mg_time () ;
 int msleep (int) ;

__attribute__((used)) static const char *test_mqtt_unsubscribe(void) {
  struct mg_connection *nc = create_test_connection();
  char *topics[] = {(char *) "/stuff"};
  const double before = mg_time();
  const char *got;
  mg_set_protocol_mqtt(nc);
  msleep(2);

  mg_mqtt_unsubscribe(nc, topics, 1, 42);
  got = nc->send_mbuf.buf;
  ASSERT_EQ(nc->send_mbuf.len, 12);
  ASSERT_EQ((got[0] & 0xf0), (MG_MQTT_CMD_UNSUBSCRIBE << 4));
  ASSERT_EQ((size_t) got[1], (nc->send_mbuf.len - 2));
  ASSERT_EQ(got[2], 0);
  ASSERT_EQ(got[3], 42);

  ASSERT_EQ(got[4], 0);
  ASSERT_EQ(got[5], 6);
  ASSERT_STREQ_NZ(&got[6], "/stuff");

  ASSERT_GT(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);

  destroy_test_connection(nc);
  return ((void*)0);
}
