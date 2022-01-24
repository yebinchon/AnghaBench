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
typedef  int /*<<< orphan*/  uint16_t ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MG_MQTT_CMD_UNSUBACK ; 
 int /*<<< orphan*/  FUNC0 (struct mg_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(struct mg_connection *nc, uint16_t message_id) {
  FUNC0(nc, MG_MQTT_CMD_UNSUBACK, message_id);
}