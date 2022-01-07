
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct espconn {scalar_t__ reverse; } ;
typedef int sint8 ;
struct TYPE_2__ {int mqttTimer; scalar_t__ secure; int connState; int event_timeout; } ;
typedef TYPE_1__ lmqtt_userdata ;


 int ESPCONN_ARG ;
 int ESPCONN_CONN ;
 int MQTT_CONNECT_TIMEOUT ;
 int MQTT_INIT ;
 int NODE_DBG (char*) ;
 int espconn_connect (struct espconn*) ;
 int espconn_secure_connect (struct espconn*) ;
 int os_timer_arm (int *,int,int) ;

__attribute__((used)) static sint8 socket_connect(struct espconn *pesp_conn)
{

  NODE_DBG("enter socket_connect.\n");

  sint8 espconn_status;

  if(pesp_conn == ((void*)0))
    return ESPCONN_CONN;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == ((void*)0))
    return ESPCONN_ARG;

  mud->event_timeout = MQTT_CONNECT_TIMEOUT;
  mud->connState = MQTT_INIT;







  {
    espconn_status = espconn_connect(pesp_conn);
  }

  os_timer_arm(&mud->mqttTimer, 1000, 1);

  NODE_DBG("leave socket_connect\n");

  return espconn_status;
}
