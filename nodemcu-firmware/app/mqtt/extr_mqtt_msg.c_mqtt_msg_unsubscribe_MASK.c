#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_6__ {scalar_t__ length; } ;
typedef  TYPE_1__ mqtt_message_t ;
typedef  int /*<<< orphan*/  mqtt_connection_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char const*) ; 

mqtt_message_t* FUNC3(mqtt_connection_t* connection, const char* topic, uint16_t* message_id)
{
  mqtt_message_t* result;

  result = FUNC1(connection, message_id);
  if (result->length != 0) {
    result = FUNC2(connection, topic);
  }
  if (result->length != 0) {
    result = FUNC0(connection);
  }

  return result;
}