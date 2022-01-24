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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,double const) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int MG_MQTT_CMD_PUBLISH ; 
 char const FUNC4 (char const) ; 
 char const FUNC5 (int) ; 
 char const MG_MQTT_RETAIN ; 
 struct mg_connection* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC8 (struct mg_connection*,char*,int,char const,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mg_connection*) ; 
 double FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 char const FUNC12 (char const*,char*,int) ; 

__attribute__((used)) static const char *FUNC13(void) {
  struct mg_connection *nc = FUNC6();
  const double before = FUNC10();
  char data[] = "dummy";
  const char *got;

  FUNC9(nc);
  FUNC11(2);
  FUNC8(nc, "/test", 42, FUNC5(1) | MG_MQTT_RETAIN, data,
                  sizeof(data));
  got = nc->send_mbuf.buf;
  FUNC1(nc->send_mbuf.len, 17);

  FUNC0(got[0] & MG_MQTT_RETAIN);
  FUNC1((got[0] & 0xf0), (MG_MQTT_CMD_PUBLISH << 4));
  FUNC1(FUNC4(got[0]), 1);
  FUNC1((size_t) got[1], (nc->send_mbuf.len - 2));

  FUNC1(got[2], 0);
  FUNC1(got[3], 5);
  FUNC3(&got[4], "/test");

  FUNC1(got[9], 0);
  FUNC1(got[10], 42);

  FUNC1(FUNC12(&got[11], data, sizeof(data)), 0);

  FUNC2(((struct mg_mqtt_proto_data *) nc->proto_data)->last_control_time,
            before);

  FUNC7(nc);
  return NULL;
}