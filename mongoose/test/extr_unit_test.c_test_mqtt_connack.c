
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* buf; int len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;


 int ASSERT (int) ;
 int ASSERT_EQ (char const,int) ;
 int MG_MQTT_CMD_CONNACK ;
 struct mg_connection* create_test_connection () ;
 int destroy_test_connection (struct mg_connection*) ;
 int mg_mqtt_connack (struct mg_connection*,int) ;
 int mg_set_protocol_mqtt (struct mg_connection*) ;

__attribute__((used)) static const char *test_mqtt_connack(void) {
  struct mg_connection *nc = create_test_connection();
  const char *got;
  mg_set_protocol_mqtt(nc);

  mg_mqtt_connack(nc, 42);
  got = nc->send_mbuf.buf;
  ASSERT(nc->send_mbuf.len > 0);
  ASSERT_EQ((got[0] & 0xf0), (MG_MQTT_CMD_CONNACK << 4));
  ASSERT_EQ((size_t) got[1], (nc->send_mbuf.len - 2));
  ASSERT_EQ(got[3], 42);

  destroy_test_connection(nc);
  return ((void*)0);
}
