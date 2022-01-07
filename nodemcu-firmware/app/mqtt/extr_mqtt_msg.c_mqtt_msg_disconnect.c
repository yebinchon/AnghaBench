
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mqtt_message_t ;
typedef int mqtt_connection_t ;


 int MQTT_MSG_TYPE_DISCONNECT ;
 int * fini_message (int *,int ,int ,int ,int ) ;
 int init_message (int *) ;

mqtt_message_t* mqtt_msg_disconnect(mqtt_connection_t* connection)
{
  init_message(connection);
  return fini_message(connection, MQTT_MSG_TYPE_DISCONNECT, 0, 0, 0);
}
