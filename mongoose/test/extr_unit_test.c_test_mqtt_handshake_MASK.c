#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mg_send_mqtt_handshake_opts {char const* will_topic; char const* will_message; char const* user_name; char const* password; int keep_alive; } ;
struct mg_mqtt_proto_data {char const keep_alive; int /*<<< orphan*/  last_control_time; } ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; scalar_t__ proto_data; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 struct mg_connection* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_send_mqtt_handshake_opts*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_connection*,char const*,struct mg_send_mqtt_handshake_opts) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_connection*) ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char const*) ; 
 char const FUNC13 (char const*,char const*,int) ; 

__attribute__((used)) static const char *FUNC14(void) {
  struct mg_send_mqtt_handshake_opts opts;
  struct mg_connection *nc = FUNC3();
  const char *client_id = "testclient";
  const char *user_name = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA";
  const char *password = "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
  const char *will_topic = "CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC";
  const char *will_message = "DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD";
  double before = FUNC10();
  const char *got;

  FUNC11(2);
  FUNC9(nc);
  FUNC7(nc, client_id);
  got = nc->send_mbuf.buf;
  /* handshake header + keepalive + client id len + client id */
  FUNC0(nc->send_mbuf.len,
            1 + 1 + 1 + 5 + 1 + 1 + 2 + 2 + FUNC12(client_id));
  FUNC0(got[0], 0x10);
  FUNC0(got[1], (int) nc->send_mbuf.len - 2);
  FUNC0(got[2], 0);
  FUNC0(got[3], 4);
  FUNC2(&got[4], "MQTT");
  FUNC0(got[8], 4);
  FUNC0(got[9], 0); /* connect flags */
  FUNC0(got[10], 0);
  FUNC0(got[11], 60);
  FUNC0(got[12], 0);
  FUNC0(got[13], (char) FUNC12(client_id));
  FUNC0(FUNC13(&got[14], client_id, FUNC12(client_id)), 0);
  FUNC0(((struct mg_mqtt_proto_data *) nc->proto_data)->keep_alive, 60);
  FUNC1(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);
  FUNC5(&nc->send_mbuf, nc->send_mbuf.len);

  FUNC6(&opts, 0, sizeof(opts));
  before = FUNC10();
  FUNC11(2);
  opts.will_topic = will_topic;
  opts.will_message = will_message;
  opts.user_name = user_name;
  opts.password = password;
  opts.keep_alive = 0x1234;
  FUNC8(nc, client_id, opts);
  got = nc->send_mbuf.buf;
  /* handshake header + keepalive + client id len + client id */
  FUNC0(nc->send_mbuf.len, 1 + 2 + 1 + 5 + 1 + 1 + 2 + 2 +
                                   FUNC12(client_id) + 2 + FUNC12(will_topic) +
                                   2 + FUNC12(will_message) + 2 +
                                   FUNC12(user_name) + 2 + FUNC12(password));
  FUNC0(got[0], 0x10);
  FUNC0(((unsigned char *) got)[1], 223);
  FUNC0(got[2], 1);
  FUNC0(got[3], 0);
  FUNC0(got[4], 4);
  FUNC2(&got[5], "MQTT");
  FUNC0(got[9], 4);
  FUNC0(((unsigned char *) got)[10], 0xc4); /* connect flags */
  FUNC0(got[11], 0x12);
  FUNC0(got[12], 0x34);
  FUNC0(got[13], 0);
  FUNC0(got[14], (char) FUNC12(client_id));
  FUNC0(FUNC13(&got[15], client_id, FUNC12(client_id)), 0);
  FUNC0(((struct mg_mqtt_proto_data *) nc->proto_data)->keep_alive, 0x1234);
  FUNC1(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);
  FUNC5(&nc->send_mbuf, nc->send_mbuf.len);

  FUNC4(nc);
  return NULL;
}