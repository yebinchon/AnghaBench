
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;


 int ASSERT_EQ (char const,int) ;
 int MG_MQTT_CMD_SUBACK ;
 char const MG_MQTT_GET_QOS (char const) ;
 struct mg_connection* create_test_connection () ;
 int destroy_test_connection (struct mg_connection*) ;
 int mg_mqtt_suback (struct mg_connection*,int*,int,int) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;

__attribute__((used)) static const char *test_mqtt_suback(void) {
  struct mg_connection *nc = create_test_connection();
  uint8_t qoss[] = {1};
  const char *got;
  mg_set_protocol_mqtt(nc);

  mg_mqtt_suback(nc, qoss, 1, 42);

  got = nc->send_mbuf.buf;
  ASSERT_EQ(nc->send_mbuf.len, 5);
  ASSERT_EQ((got[0] & 0xf0), (MG_MQTT_CMD_SUBACK << 4));
  ASSERT_EQ(MG_MQTT_GET_QOS(got[0]), 1);
  ASSERT_EQ((size_t) got[1], (nc->send_mbuf.len - 2));
  ASSERT_EQ(got[2], 0);
  ASSERT_EQ(got[3], 42);
  ASSERT_EQ(got[4], 1);

  destroy_test_connection(nc);
  return ((void*)0);
}
