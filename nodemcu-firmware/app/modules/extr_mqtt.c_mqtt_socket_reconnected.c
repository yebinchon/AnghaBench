
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct espconn {scalar_t__ reverse; } ;
typedef int sint8_t ;
struct TYPE_3__ {scalar_t__ secure; scalar_t__ event_timeout; int mqttTimer; } ;
typedef TYPE_1__ lmqtt_userdata ;


 int MQTT_CONN_FAIL_SERVER_NOT_FOUND ;
 int NODE_DBG (char*) ;
 int espconn_disconnect (struct espconn*) ;
 int espconn_secure_disconnect (struct espconn*) ;
 int mqtt_connack_fail (TYPE_1__*,int ) ;
 int mqtt_socket_disconnected (void*) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static void mqtt_socket_reconnected(void *arg, sint8_t err)
{
  NODE_DBG("enter mqtt_socket_reconnected.\n");

  struct espconn *pesp_conn = arg;
  if(pesp_conn == ((void*)0))
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == ((void*)0))
    return;

  os_timer_disarm(&mud->mqttTimer);

  mud->event_timeout = 0;






  {
    espconn_disconnect(pesp_conn);
  }

  mqtt_connack_fail(mud, MQTT_CONN_FAIL_SERVER_NOT_FOUND);

  mqtt_socket_disconnected(arg);
  NODE_DBG("leave mqtt_socket_reconnected.\n");
}
