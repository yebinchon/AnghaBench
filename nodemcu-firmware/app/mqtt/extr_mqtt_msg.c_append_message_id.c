
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_5__ {int message_id; scalar_t__ buffer_length; int* buffer; TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;



__attribute__((used)) static uint16_t append_message_id(mqtt_connection_t* connection, uint16_t message_id)
{


  while(message_id == 0)
    message_id = ++connection->message_id;

  if(connection->message.length + 2 > connection->buffer_length)
    return 0;

  connection->buffer[connection->message.length++] = message_id >> 8;
  connection->buffer[connection->message.length++] = message_id & 0xff;

  return message_id;
}
