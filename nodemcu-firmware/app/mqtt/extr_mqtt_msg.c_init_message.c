
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; } ;
struct TYPE_5__ {TYPE_1__ message; } ;
typedef TYPE_2__ mqtt_connection_t ;


 int MQTT_MAX_FIXED_HEADER_SIZE ;

__attribute__((used)) static int init_message(mqtt_connection_t* connection)
{
  connection->message.length = MQTT_MAX_FIXED_HEADER_SIZE;
  return MQTT_MAX_FIXED_HEADER_SIZE;
}
