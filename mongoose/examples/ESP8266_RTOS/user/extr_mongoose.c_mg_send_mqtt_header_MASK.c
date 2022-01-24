#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct mg_mqtt_proto_data {int /*<<< orphan*/  last_control_time; } ;
struct mg_connection {scalar_t__ proto_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct mg_connection *nc, uint8_t cmd,
                                uint8_t flags, size_t len) {
  struct mg_mqtt_proto_data *pd = (struct mg_mqtt_proto_data *) nc->proto_data;
  uint8_t buf[1 + sizeof(size_t)];
  uint8_t *vlen = &buf[1];

  buf[0] = (cmd << 4) | flags;

  /* mqtt variable length encoding */
  do {
    *vlen = len % 0x80;
    len /= 0x80;
    if (len > 0) *vlen |= 0x80;
    vlen++;
  } while (len > 0);

  FUNC0(nc, buf, vlen - buf);
  pd->last_control_time = FUNC1();
}