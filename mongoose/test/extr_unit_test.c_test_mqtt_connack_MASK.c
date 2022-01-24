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
struct TYPE_2__ {char* buf; int len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const,int) ; 
 int MG_MQTT_CMD_CONNACK ; 
 struct mg_connection* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_connection *nc = FUNC2();
  const char *got;
  FUNC5(nc);

  FUNC4(nc, 42);
  got = nc->send_mbuf.buf;
  FUNC0(nc->send_mbuf.len > 0);
  FUNC1((got[0] & 0xf0), (MG_MQTT_CMD_CONNACK << 4));
  FUNC1((size_t) got[1], (nc->send_mbuf.len - 2));
  FUNC1(got[3], 42);

  FUNC3(nc);
  return NULL;
}