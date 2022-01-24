#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct espconn {scalar_t__ reverse; } ;
struct TYPE_6__ {scalar_t__ msg_type; scalar_t__ publish_qos; } ;
typedef  TYPE_2__ msg_queue_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  pending_msg_q; } ;
struct TYPE_7__ {scalar_t__ connState; scalar_t__ cb_puback_ref; scalar_t__ self_ref; TYPE_1__ mqtt_state; int /*<<< orphan*/  pesp_conn; scalar_t__ event_timeout; scalar_t__ keep_alive_tick; int /*<<< orphan*/  connected; } ;
typedef  TYPE_3__ lmqtt_userdata ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ MQTT_CONNECT_SENDING ; 
 scalar_t__ MQTT_CONNECT_SENT ; 
 scalar_t__ MQTT_MSG_TYPE_PINGREQ ; 
 scalar_t__ MQTT_MSG_TYPE_PUBACK ; 
 scalar_t__ MQTT_MSG_TYPE_PUBCOMP ; 
 scalar_t__ MQTT_MSG_TYPE_PUBLISH ; 
 scalar_t__ MQTT_SEND_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(void *arg)
{
  FUNC0("enter mqtt_socket_sent.\n");
  struct espconn *pesp_conn = arg;
  if(pesp_conn == NULL)
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == NULL)
    return;
  if(!mud->connected)
    return;
  // call mqtt_sent()
  mud->event_timeout = 0;
  mud->keep_alive_tick = 0;

  if(mud->connState == MQTT_CONNECT_SENDING){
    mud->connState = MQTT_CONNECT_SENT;
    mud->event_timeout = MQTT_SEND_TIMEOUT;
    // MQTT_CONNECT not queued.
    return;
  }
  FUNC0("sent1, queue size: %d\n", FUNC8(&(mud->mqtt_state.pending_msg_q)));
  uint8_t try_send = 1;
  // qos = 0, publish and forgot.
  msg_queue_t *node = FUNC7(&(mud->mqtt_state.pending_msg_q));
  if(node && node->msg_type == MQTT_MSG_TYPE_PUBLISH && node->publish_qos == 0) {
    FUNC6(FUNC5(&(mud->mqtt_state.pending_msg_q)));
    if(mud->cb_puback_ref != LUA_NOREF && mud->self_ref != LUA_NOREF) {
      lua_State *L = FUNC2();
      FUNC3(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
      FUNC3(L, LUA_REGISTRYINDEX, mud->self_ref);  // pass the userdata to callback func in lua
      FUNC1(L, 1, 0);
    }
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PUBACK) {
    FUNC6(FUNC5(&(mud->mqtt_state.pending_msg_q)));
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PUBCOMP) {
    FUNC6(FUNC5(&(mud->mqtt_state.pending_msg_q)));
  } else if(node && node->msg_type == MQTT_MSG_TYPE_PINGREQ) {
    FUNC6(FUNC5(&(mud->mqtt_state.pending_msg_q)));
  } else {
    try_send = 0;
  }
  if (try_send) {
    FUNC4(mud->pesp_conn);
  }
  FUNC0("sent2, queue size: %d\n", FUNC8(&(mud->mqtt_state.pending_msg_q)));
  FUNC0("leave mqtt_socket_sent.\n");
}