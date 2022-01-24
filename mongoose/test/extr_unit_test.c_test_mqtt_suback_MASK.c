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
typedef  int uint8_t ;
struct TYPE_2__ {char* buf; char const len; } ;
struct mg_connection {TYPE_1__ send_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const,int) ; 
 int MG_MQTT_CMD_SUBACK ; 
 char const FUNC1 (char const) ; 
 struct mg_connection* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_connection*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mg_connection*) ; 

__attribute__((used)) static const char *FUNC6(void) {
  struct mg_connection *nc = FUNC2();
  uint8_t qoss[] = {1};
  const char *got;
  FUNC5(nc);

  FUNC4(nc, qoss, 1, 42);

  got = nc->send_mbuf.buf;
  FUNC0(nc->send_mbuf.len, 5);
  FUNC0((got[0] & 0xf0), (MG_MQTT_CMD_SUBACK << 4));
  FUNC0(FUNC1(got[0]), 1);
  FUNC0((size_t) got[1], (nc->send_mbuf.len - 2));
  FUNC0(got[2], 0);
  FUNC0(got[3], 42);
  FUNC0(got[4], 1);

  FUNC3(nc);
  return NULL;
}