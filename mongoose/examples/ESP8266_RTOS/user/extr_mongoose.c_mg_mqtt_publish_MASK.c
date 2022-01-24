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
typedef  int uint16_t ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_MQTT_CMD_PUBLISH ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,int,size_t) ; 
 int FUNC4 (char const*) ; 

void FUNC5(struct mg_connection *nc, const char *topic,
                     uint16_t message_id, int flags, const void *data,
                     size_t len) {
  uint16_t netbytes;
  uint16_t topic_len = FUNC4(topic);

  size_t total_len = 2 + topic_len + len;
  if (FUNC0(flags) > 0) {
    total_len += 2;
  }

  FUNC3(nc, MG_MQTT_CMD_PUBLISH, flags, total_len);

  netbytes = FUNC1(topic_len);
  FUNC2(nc, &netbytes, 2);
  FUNC2(nc, topic, topic_len);

  if (FUNC0(flags) > 0) {
    netbytes = FUNC1(message_id);
    FUNC2(nc, &netbytes, 2);
  }

  FUNC2(nc, data, len);
}