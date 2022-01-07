
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct espconn {scalar_t__ reverse; } ;
struct TYPE_6__ {scalar_t__ msg_type; scalar_t__ publish_qos; } ;
typedef TYPE_2__ msg_queue_t ;
typedef int lua_State ;
struct TYPE_5__ {int pending_msg_q; } ;
struct TYPE_7__ {scalar_t__ connState; scalar_t__ cb_puback_ref; scalar_t__ self_ref; TYPE_1__ mqtt_state; int pesp_conn; scalar_t__ event_timeout; scalar_t__ keep_alive_tick; int connected; } ;
typedef TYPE_3__ lmqtt_userdata ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ MQTT_CONNECT_SENDING ;
 scalar_t__ MQTT_CONNECT_SENT ;
 scalar_t__ MQTT_MSG_TYPE_PINGREQ ;
 scalar_t__ MQTT_MSG_TYPE_PUBACK ;
 scalar_t__ MQTT_MSG_TYPE_PUBCOMP ;
 scalar_t__ MQTT_MSG_TYPE_PUBLISH ;
 scalar_t__ MQTT_SEND_TIMEOUT ;
 int NODE_DBG (char*,...) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int mqtt_send_if_possible (int ) ;
 int msg_dequeue (int *) ;
 int msg_destroy (int ) ;
 TYPE_2__* msg_peek (int *) ;
 int msg_size (int *) ;

__attribute__((used)) static void mqtt_socket_sent(void *arg)
{
  NODE_DBG("enter mqtt_socket_sent.\n");
  struct espconn *pesp_conn = arg;
  if(pesp_conn == ((void*)0))
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == ((void*)0))
    return;
  if(!mud->connected)
    return;

  mud->event_timeout = 0;
  mud->keep_alive_tick = 0;

  if(mud->connState == MQTT_CONNECT_SENDING){
    mud->connState = MQTT_CONNECT_SENT;
    mud->event_timeout = MQTT_SEND_TIMEOUT;

    return;
  }
  NODE_DBG("sent1, queue size: %d\n", msg_size(&(mud->mqtt_state.pending_msg_q)));
  uint8_t try_send = 1;

  msg_queue_t *node = msg_peek(&(mud->mqtt_state.pending_msg_q));
  if(node && node->msg_type == MQTT_MSG_TYPE_PUBLISH && node->publish_qos == 0) {
    msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));
    if(mud->cb_puback_ref != LUA_NOREF && mud->self_ref != LUA_NOREF) {
      lua_State *L = lua_getstate();
      lua_rawgeti(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
      lua_rawgeti(L, LUA_REGISTRYINDEX, mud->self_ref);
      lua_call(L, 1, 0);
    }
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PUBACK) {
    msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PUBCOMP) {
    msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PINGREQ) {
    msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));
  } else {
    try_send = 0;
  }
  if (try_send) {
    mqtt_send_if_possible(mud->pesp_conn);
  }
  NODE_DBG("sent2, queue size: %d\n", msg_size(&(mud->mqtt_state.pending_msg_q)));
  NODE_DBG("leave mqtt_socket_sent.\n");
}
