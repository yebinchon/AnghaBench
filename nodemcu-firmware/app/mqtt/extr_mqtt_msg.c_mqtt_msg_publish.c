
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mqtt_message_t ;
struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_10__ {scalar_t__ buffer_length; scalar_t__ buffer; TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;


 int MQTT_MSG_TYPE_PUBLISH ;
 int append_message_id (TYPE_2__*,int ) ;
 scalar_t__ append_string (TYPE_2__*,char const*,int ) ;
 int * fail_message (TYPE_2__*) ;
 int * fini_message (TYPE_2__*,int ,int ,int,int) ;
 int init_message (TYPE_2__*) ;
 int memcpy (scalar_t__,char const*,int) ;
 int strlen (char const*) ;

mqtt_message_t* mqtt_msg_publish(mqtt_connection_t* connection, const char* topic, const char* data, int data_length, int qos, int retain, uint16_t* message_id)
{
  init_message(connection);

  if(topic == ((void*)0) || topic[0] == '\0')
    return fail_message(connection);

  if(append_string(connection, topic, strlen(topic)) < 0)
    return fail_message(connection);

  if(qos > 0)
  {
    if((*message_id = append_message_id(connection, 0)) == 0)
      return fail_message(connection);
  }
  else
    *message_id = 0;

  if(connection->message.length + data_length > connection->buffer_length)
    return fail_message(connection);
  memcpy(connection->buffer + connection->message.length, data, data_length);
  connection->message.length += data_length;

  return fini_message(connection, MQTT_MSG_TYPE_PUBLISH, 0, qos, retain);
}
