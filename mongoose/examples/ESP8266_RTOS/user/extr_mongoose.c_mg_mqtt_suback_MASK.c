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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_MQTT_CMD_SUBACK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct mg_connection *nc, uint8_t *qoss, size_t qoss_len,
                    uint16_t message_id) {
  size_t i;
  uint16_t netbytes;

  FUNC3(nc, MG_MQTT_CMD_SUBACK, FUNC0(1), 2 + qoss_len);

  netbytes = FUNC1(message_id);
  FUNC2(nc, &netbytes, 2);

  for (i = 0; i < qoss_len; i++) {
    FUNC2(nc, &qoss[i], 1);
  }
}