
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int mqtt_message_t ;
typedef int mqtt_connection_t ;


 int MQTT_MSG_TYPE_PUBCOMP ;
 scalar_t__ append_message_id (int *,int ) ;
 int * fail_message (int *) ;
 int * fini_message (int *,int ,int ,int ,int ) ;
 int init_message (int *) ;

mqtt_message_t* mqtt_msg_pubcomp(mqtt_connection_t* connection, uint16_t message_id)
{
  init_message(connection);
  if(append_message_id(connection, message_id) == 0)
    return fail_message(connection);
  return fini_message(connection, MQTT_MSG_TYPE_PUBCOMP, 0, 0, 0);
}
