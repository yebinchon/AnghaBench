
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mqtt_message_t ;
struct TYPE_5__ {int message; } ;
typedef TYPE_1__ mqtt_connection_t ;


 scalar_t__ append_string (TYPE_1__*,char const*,int ) ;
 int * fail_message (TYPE_1__*) ;
 int strlen (char const*) ;

mqtt_message_t* mqtt_msg_unsubscribe_topic(mqtt_connection_t* connection, const char* topic)
{
  if(topic == ((void*)0) || topic[0] == '\0')
    return fail_message(connection);

  if(append_string(connection, topic, strlen(topic)) < 0)
    return fail_message(connection);

  return &connection->message;
}
