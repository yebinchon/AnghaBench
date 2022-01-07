
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int p; int len; } ;
struct TYPE_3__ {int p; int len; } ;
struct mg_mqtt_message {TYPE_2__ payload; TYPE_1__ topic; int message_id; int qos; int cmd; } ;
struct mbuf {int dummy; } ;
typedef int msg_qos1 ;
typedef int mm ;


 int ASSERT_EQ (int ,int) ;
 int ASSERT_STREQ_NZ (int ,char*) ;
 int MG_MQTT_CMD_PUBLISH ;
 int mbuf_append (struct mbuf*,char*,int) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int ) ;
 int memset (struct mg_mqtt_message*,int ,int) ;
 int parse_mqtt (struct mbuf*,struct mg_mqtt_message*) ;

__attribute__((used)) static const char *test_mqtt_parse_mqtt_qos1(void) {

  struct mg_mqtt_message mm;
  char msg_qos1[] = {
      ((MG_MQTT_CMD_PUBLISH << 4) | (1 << 1)),
      2 + 6 + 2 + 7,
      0, 6, '/', 't', 'o', 'p', 'i', 'c',
      0x12, 0x34,
      'p', 'a', 'y', 'l', 'o', 'a', 'd',
  };

  struct mbuf mb;
  memset(&mm, 0, sizeof(mm));
  mbuf_init(&mb, 0);
  mbuf_append(&mb, msg_qos1, sizeof(msg_qos1));
  ASSERT_EQ(parse_mqtt(&mb, &mm), (int) sizeof(msg_qos1));
  ASSERT_EQ(mm.cmd, MG_MQTT_CMD_PUBLISH);
  ASSERT_EQ(mm.qos, 1);
  ASSERT_EQ(mm.message_id, 0x1234);
  ASSERT_EQ(mm.topic.len, 6);
  ASSERT_STREQ_NZ(mm.topic.p, "/topic");
  ASSERT_EQ(mm.payload.len, 7);
  ASSERT_STREQ_NZ(mm.payload.p, "payload");
  mbuf_free(&mb);
  return ((void*)0);
}
