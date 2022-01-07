
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ length; int data; } ;
typedef TYPE_1__ mqtt_message_t ;
struct TYPE_6__ {TYPE_1__ message; int buffer; } ;
typedef TYPE_2__ mqtt_connection_t ;



__attribute__((used)) static mqtt_message_t* fail_message(mqtt_connection_t* connection)
{
  connection->message.data = connection->buffer;
  connection->message.length = 0;
  return &connection->message;
}
