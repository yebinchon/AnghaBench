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
struct mg_mqtt_proto_data {int /*<<< orphan*/  last_control_time; } ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {scalar_t__ proto_data; TYPE_1__ send_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int MG_MQTT_CMD_UNSUBSCRIBE ; 
 struct mg_connection* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*,char**,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mg_connection*) ; 
 double FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static const char *FUNC9(void) {
  struct mg_connection *nc = FUNC3();
  char *topics[] = {(char *) "/stuff"};
  const double before = FUNC7();
  const char *got;
  FUNC6(nc);
  FUNC8(2);

  FUNC5(nc, topics, 1, 42);
  got = nc->send_mbuf.buf;
  FUNC0(nc->send_mbuf.len, 12);
  FUNC0((got[0] & 0xf0), (MG_MQTT_CMD_UNSUBSCRIBE << 4));
  FUNC0((size_t) got[1], (nc->send_mbuf.len - 2));
  FUNC0(got[2], 0);
  FUNC0(got[3], 42);

  FUNC0(got[4], 0);
  FUNC0(got[5], 6);
  FUNC2(&got[6], "/stuff");

  FUNC1(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);

  FUNC4(nc);
  return NULL;
}