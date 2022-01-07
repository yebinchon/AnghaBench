
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef int mqtt_message_t ;
struct TYPE_6__ {int message; } ;
typedef TYPE_1__ mqtt_connection_t ;


 int append_message_id (TYPE_1__*,int ) ;
 int * fail_message (TYPE_1__*) ;
 int init_message (TYPE_1__*) ;

mqtt_message_t* mqtt_msg_subscribe_init(mqtt_connection_t* connection, uint16_t *message_id)
{
  init_message(connection);

  if((*message_id = append_message_id(connection, 0)) == 0)
    return fail_message(connection);

  return &connection->message;
}
