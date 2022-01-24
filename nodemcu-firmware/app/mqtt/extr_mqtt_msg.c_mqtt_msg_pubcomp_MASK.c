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
typedef  int /*<<< orphan*/  mqtt_message_t ;
typedef  int /*<<< orphan*/  mqtt_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  MQTT_MSG_TYPE_PUBCOMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

mqtt_message_t* FUNC4(mqtt_connection_t* connection, uint16_t message_id)
{
  FUNC3(connection);
  if(FUNC0(connection, message_id) == 0)
    return FUNC1(connection);
  return FUNC2(connection, MQTT_MSG_TYPE_PUBCOMP, 0, 0, 0);
}