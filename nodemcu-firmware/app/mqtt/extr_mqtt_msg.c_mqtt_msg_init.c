
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {int buffer_length; int * buffer; } ;
typedef TYPE_1__ mqtt_connection_t ;
typedef int connection ;


 int memset (TYPE_1__*,int ,int) ;

void mqtt_msg_init(mqtt_connection_t* connection, uint8_t* buffer, uint16_t buffer_length)
{
  memset(connection, 0, sizeof(connection));
  connection->buffer = buffer;
  connection->buffer_length = buffer_length;
}
