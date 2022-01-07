
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int mqtt_message_t ;
typedef int mqtt_connection_t ;


 int * mqtt_msg_subscribe_init (int *,int *) ;

mqtt_message_t* mqtt_msg_unsubscribe_init(mqtt_connection_t* connection, uint16_t *message_id)
{
  return mqtt_msg_subscribe_init(connection, message_id);
}
