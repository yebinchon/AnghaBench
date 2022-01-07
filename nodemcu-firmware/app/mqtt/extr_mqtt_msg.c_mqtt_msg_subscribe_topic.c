
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ length; } ;
typedef TYPE_1__ mqtt_message_t ;
struct TYPE_9__ {scalar_t__ buffer_length; int* buffer; TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;


 scalar_t__ append_string (TYPE_2__*,char const*,int ) ;
 TYPE_1__* fail_message (TYPE_2__*) ;
 int strlen (char const*) ;

mqtt_message_t* mqtt_msg_subscribe_topic(mqtt_connection_t* connection, const char* topic, int qos)
{
  if(topic == ((void*)0) || topic[0] == '\0')
    return fail_message(connection);

  if(append_string(connection, topic, strlen(topic)) < 0)
    return fail_message(connection);

  if(connection->message.length + 1 > connection->buffer_length)
    return fail_message(connection);
  connection->buffer[connection->message.length++] = qos;

  return &connection->message;
}
