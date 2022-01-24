#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct mqtt_connect_variable_header {int lengthLsb; int version; int flags; int keepaliveMsb; int keepaliveLsb; int /*<<< orphan*/  magic; scalar_t__ lengthMsb; } ;
typedef  int /*<<< orphan*/  mqtt_message_t ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_11__ {scalar_t__ buffer_length; scalar_t__ buffer; TYPE_1__ message; } ;
typedef  TYPE_2__ mqtt_connection_t ;
struct TYPE_12__ {int keepalive; char* client_id; char* will_topic; char* will_message; int will_qos; char* username; char* password; scalar_t__ will_retain; scalar_t__ clean_session; } ;
typedef  TYPE_3__ mqtt_connect_info_t ;

/* Variables and functions */
 int MQTT_CONNECT_FLAG_CLEAN_SESSION ; 
 int MQTT_CONNECT_FLAG_PASSWORD ; 
 int MQTT_CONNECT_FLAG_USERNAME ; 
 int MQTT_CONNECT_FLAG_WILL ; 
 int MQTT_CONNECT_FLAG_WILL_RETAIN ; 
 int /*<<< orphan*/  MQTT_MSG_TYPE_CONNECT ; 
 scalar_t__ FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

mqtt_message_t* FUNC6(mqtt_connection_t* connection, mqtt_connect_info_t* info)
{
  struct mqtt_connect_variable_header* variable_header;

  FUNC3(connection);

  if(connection->message.length + sizeof(*variable_header) > connection->buffer_length)
    return FUNC1(connection);
  variable_header = (void*)(connection->buffer + connection->message.length);
  connection->message.length += sizeof(*variable_header);

  variable_header->lengthMsb = 0;
  variable_header->lengthLsb = 4;
  FUNC4(variable_header->magic, "MQTT", 4);
  variable_header->version = 4;
  variable_header->flags = 0;
  variable_header->keepaliveMsb = info->keepalive >> 8;
  variable_header->keepaliveLsb = info->keepalive & 0xff;

  if(info->clean_session)
    variable_header->flags |= MQTT_CONNECT_FLAG_CLEAN_SESSION;

  if(info->client_id != NULL && info->client_id[0] != '\0')
  {
    if(FUNC0(connection, info->client_id, FUNC5(info->client_id)) < 0)
      return FUNC1(connection);
  }
  else
    return FUNC1(connection);

  if(info->will_topic != NULL && info->will_topic[0] != '\0')
  {
    if(FUNC0(connection, info->will_topic, FUNC5(info->will_topic)) < 0)
      return FUNC1(connection);

    if(FUNC0(connection, info->will_message, FUNC5(info->will_message)) < 0)
      return FUNC1(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_WILL;
    if(info->will_retain)
      variable_header->flags |= MQTT_CONNECT_FLAG_WILL_RETAIN;
    variable_header->flags |= (info->will_qos & 3) << 3;
  }

  if(info->username != NULL && info->username[0] != '\0')
  {
    if(FUNC0(connection, info->username, FUNC5(info->username)) < 0)
      return FUNC1(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_USERNAME;
  }

  if(info->password != NULL && info->password[0] != '\0')
  {
    if(FUNC0(connection, info->password, FUNC5(info->password)) < 0)
      return FUNC1(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_PASSWORD;
  }

  return FUNC2(connection, MQTT_MSG_TYPE_CONNECT, 0, 0, 0);
}