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
typedef  char uint16_t ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_MQTT_CMD_UNSUBSCRIBE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 char FUNC4 (char*) ; 

void FUNC5(struct mg_connection *nc, char **topics,
                         size_t topics_len, uint16_t message_id) {
  uint16_t netbytes;
  size_t i;
  uint16_t topic_len;
  size_t total_len = 2;

  for (i = 0; i < topics_len; i++) {
    total_len += 2 + FUNC4(topics[i]);
  }

  FUNC3(nc, MG_MQTT_CMD_UNSUBSCRIBE, FUNC0(1), total_len);

  netbytes = FUNC1(message_id);
  FUNC2(nc, (char *) &netbytes, 2);

  for (i = 0; i < topics_len; i++) {
    topic_len = FUNC4(topics[i]);
    netbytes = FUNC1(topic_len);
    FUNC2(nc, &netbytes, 2);
    FUNC2(nc, topics[i], topic_len);
  }
}