#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int len; } ;
struct mg_connection {int* user_data; int flags; TYPE_1__ recv_mbuf; int /*<<< orphan*/  (* proto_handler ) (struct mg_connection*,int /*<<< orphan*/ ,int*) ;TYPE_1__ send_mbuf; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  MG_EV_RECV ; 
 int MG_F_CLOSE_IMMEDIATELY ; 
 int MG_MQTT_CMD_PUBLISH ; 
 int MG_MQTT_CMD_SUBACK ; 
 struct mg_connection* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mg_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mg_connection*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct mg_connection*) ; 
 int /*<<< orphan*/  mqtt_eh ; 
 int mqtt_long_payload_len ; 
 int mqtt_very_long_payload_len ; 
 int /*<<< orphan*/  FUNC15 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (struct mg_connection*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static const char *FUNC22(void) {
  struct mg_connection *nc = FUNC2();
  char msg[] = {(char) (MG_MQTT_CMD_SUBACK << 4), 2, 1, 1};
  char *long_msg;
  int check = 0;
  int num_bytes = sizeof(msg), rest_len, i;

  nc->user_data = &check;
  nc->handler = mqtt_eh;
  FUNC14(nc);

  FUNC6(&nc->recv_mbuf, msg, num_bytes);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  FUNC1(check, 1);
  FUNC7(&nc->recv_mbuf);

  /* test a payload whose length encodes as two bytes */
  rest_len = 2 + 6 + mqtt_long_payload_len;
  long_msg = (char *) FUNC5(512);
  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = (rest_len & 0x7f) | 0x80;
  long_msg[2] = rest_len >> 7;
  FUNC10(&long_msg[3], "\0\006/topic", 8);
  FUNC11(&long_msg[11], 'A', mqtt_long_payload_len);

  num_bytes = 3 + rest_len;
  FUNC6(&nc->recv_mbuf, long_msg, num_bytes);

  /* Short read: handler is not run and data is not consumed */
  for (i = 0; i < num_bytes; i++) {
    check = 123;
    nc->recv_mbuf.len = i;
    nc->proto_handler(nc, MG_EV_RECV, &i);
    FUNC1((int) nc->recv_mbuf.len, i);
    FUNC1(check, 123);
  }

  nc->recv_mbuf.len = num_bytes;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);
  FUNC1(check, 2);
  FUNC7(&nc->recv_mbuf);
  FUNC4(long_msg);

  /* test a payload whose length encodes as two bytes */
  rest_len = 8 + mqtt_very_long_payload_len;
  long_msg = (char *) FUNC5(20100);
  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = (rest_len & 127) | 0x80;
  long_msg[2] = ((rest_len >> 7) & 127) | 0x80;
  long_msg[3] = (rest_len >> 14);
  FUNC10(&long_msg[4], "\0\006/topic", 8);
  FUNC11(&long_msg[12], 'A', mqtt_very_long_payload_len);

  num_bytes = 4 + rest_len;
  FUNC6(&nc->recv_mbuf, long_msg, num_bytes);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  FUNC1(check, 3);
  FUNC9(&nc->recv_mbuf, nc->recv_mbuf.len);

  /* Message length encodings > 4 bytes are not allowed by the standard,
   * connections should be closed immediately. */
  long_msg[0] = (char) (MG_MQTT_CMD_PUBLISH << 4);
  long_msg[1] = 0xff;
  long_msg[2] = 0xff;
  long_msg[3] = 0xff;
  long_msg[4] = 0xff;
  long_msg[5] = 0xff;
  FUNC6(&nc->recv_mbuf, long_msg, 10);
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);
  FUNC0(nc->flags & MG_F_CLOSE_IMMEDIATELY);

  FUNC7(&nc->recv_mbuf);
  FUNC4(long_msg);

  /* test encoding a large payload */
  long_msg = (char *) FUNC5(mqtt_very_long_payload_len);
  FUNC11(long_msg, 'A', mqtt_very_long_payload_len);
  FUNC13(nc, "/topic", 0, 0, long_msg, mqtt_very_long_payload_len);
  nc->recv_mbuf = nc->send_mbuf;
  FUNC8(&nc->send_mbuf, 0);
  num_bytes = nc->recv_mbuf.len;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  FUNC1(check, 3);
  FUNC7(&nc->recv_mbuf);
  FUNC4(long_msg);

  /* test connack parsing */
  FUNC12(nc, 0);
  nc->recv_mbuf = nc->send_mbuf;
  FUNC8(&nc->send_mbuf, 0);
  num_bytes = 4;
  nc->proto_handler(nc, MG_EV_RECV, &num_bytes);

  FUNC1(check, 4);
  FUNC7(&nc->recv_mbuf);

  FUNC3(nc);
  return NULL;
}