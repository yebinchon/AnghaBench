
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; } ;
struct TYPE_5__ {scalar_t__ buffer_length; int* buffer; TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;


 int memcpy (int*,char const*,int) ;

__attribute__((used)) static int append_string(mqtt_connection_t* connection, const char* string, int len)
{
  if(connection->message.length + len + 2 > connection->buffer_length)
    return -1;

  connection->buffer[connection->message.length++] = len >> 8;
  connection->buffer[connection->message.length++] = len & 0xff;
  memcpy(connection->buffer + connection->message.length, string, len);
  connection->message.length += len;

  return len + 2;
}
