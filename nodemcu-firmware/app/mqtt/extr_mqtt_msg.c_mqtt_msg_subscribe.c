
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ length; } ;
typedef TYPE_1__ mqtt_message_t ;
typedef int mqtt_connection_t ;


 TYPE_1__* mqtt_msg_subscribe_fini (int *) ;
 TYPE_1__* mqtt_msg_subscribe_init (int *,int *) ;
 TYPE_1__* mqtt_msg_subscribe_topic (int *,char const*,int) ;

mqtt_message_t* mqtt_msg_subscribe(mqtt_connection_t* connection, const char* topic, int qos, uint16_t* message_id)
{
  mqtt_message_t* result;

  result = mqtt_msg_subscribe_init(connection, message_id);
  if (result->length != 0) {
    result = mqtt_msg_subscribe_topic(connection, topic, qos);
  }
  if (result->length != 0) {
    result = mqtt_msg_subscribe_fini(connection);
  }

  return result;
}
