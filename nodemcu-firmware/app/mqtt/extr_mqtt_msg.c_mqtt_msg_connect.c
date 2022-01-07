
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct mqtt_connect_variable_header {int lengthLsb; int version; int flags; int keepaliveMsb; int keepaliveLsb; int magic; scalar_t__ lengthMsb; } ;
typedef int mqtt_message_t ;
struct TYPE_10__ {scalar_t__ length; } ;
struct TYPE_11__ {scalar_t__ buffer_length; scalar_t__ buffer; TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;
struct TYPE_12__ {int keepalive; char* client_id; char* will_topic; char* will_message; int will_qos; char* username; char* password; scalar_t__ will_retain; scalar_t__ clean_session; } ;
typedef TYPE_3__ mqtt_connect_info_t ;


 int MQTT_CONNECT_FLAG_CLEAN_SESSION ;
 int MQTT_CONNECT_FLAG_PASSWORD ;
 int MQTT_CONNECT_FLAG_USERNAME ;
 int MQTT_CONNECT_FLAG_WILL ;
 int MQTT_CONNECT_FLAG_WILL_RETAIN ;
 int MQTT_MSG_TYPE_CONNECT ;
 scalar_t__ append_string (TYPE_2__*,char*,int ) ;
 int * fail_message (TYPE_2__*) ;
 int * fini_message (TYPE_2__*,int ,int ,int ,int ) ;
 int init_message (TYPE_2__*) ;
 int memcpy (int ,char*,int) ;
 int strlen (char*) ;

mqtt_message_t* mqtt_msg_connect(mqtt_connection_t* connection, mqtt_connect_info_t* info)
{
  struct mqtt_connect_variable_header* variable_header;

  init_message(connection);

  if(connection->message.length + sizeof(*variable_header) > connection->buffer_length)
    return fail_message(connection);
  variable_header = (void*)(connection->buffer + connection->message.length);
  connection->message.length += sizeof(*variable_header);

  variable_header->lengthMsb = 0;
  variable_header->lengthLsb = 4;
  memcpy(variable_header->magic, "MQTT", 4);
  variable_header->version = 4;
  variable_header->flags = 0;
  variable_header->keepaliveMsb = info->keepalive >> 8;
  variable_header->keepaliveLsb = info->keepalive & 0xff;

  if(info->clean_session)
    variable_header->flags |= MQTT_CONNECT_FLAG_CLEAN_SESSION;

  if(info->client_id != ((void*)0) && info->client_id[0] != '\0')
  {
    if(append_string(connection, info->client_id, strlen(info->client_id)) < 0)
      return fail_message(connection);
  }
  else
    return fail_message(connection);

  if(info->will_topic != ((void*)0) && info->will_topic[0] != '\0')
  {
    if(append_string(connection, info->will_topic, strlen(info->will_topic)) < 0)
      return fail_message(connection);

    if(append_string(connection, info->will_message, strlen(info->will_message)) < 0)
      return fail_message(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_WILL;
    if(info->will_retain)
      variable_header->flags |= MQTT_CONNECT_FLAG_WILL_RETAIN;
    variable_header->flags |= (info->will_qos & 3) << 3;
  }

  if(info->username != ((void*)0) && info->username[0] != '\0')
  {
    if(append_string(connection, info->username, strlen(info->username)) < 0)
      return fail_message(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_USERNAME;
  }

  if(info->password != ((void*)0) && info->password[0] != '\0')
  {
    if(append_string(connection, info->password, strlen(info->password)) < 0)
      return fail_message(connection);

    variable_header->flags |= MQTT_CONNECT_FLAG_PASSWORD;
  }

  return fini_message(connection, MQTT_MSG_TYPE_CONNECT, 0, 0, 0);
}
