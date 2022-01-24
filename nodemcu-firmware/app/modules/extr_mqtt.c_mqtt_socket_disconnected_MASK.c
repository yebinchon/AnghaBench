#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct espconn {scalar_t__ reverse; } ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int /*<<< orphan*/  recv_buffer_state; scalar_t__ recv_buffer_size; TYPE_4__* recv_buffer; } ;
struct TYPE_7__ {int connected; scalar_t__ cb_disconnect_ref; scalar_t__ self_ref; TYPE_4__* pesp_conn; TYPE_1__ mqtt_state; int /*<<< orphan*/  mqttTimer; } ;
typedef  TYPE_3__ lmqtt_userdata ;
struct TYPE_6__ {TYPE_4__* tcp; } ;
struct TYPE_8__ {TYPE_2__ proto; int /*<<< orphan*/ * reverse; } ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  MQTT_RECV_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *arg)    // tcp only
{
  FUNC0("enter mqtt_socket_disconnected.\n");
  struct espconn *pesp_conn = arg;
  bool call_back = false;
  if(pesp_conn == NULL)
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == NULL)
    return;

  FUNC6(&mud->mqttTimer);

  lua_State *L = FUNC4();

  if(mud->connected){     // call back only called when socket is from connection to disconnection.
    mud->connected = false;
    if((mud->cb_disconnect_ref != LUA_NOREF) && (mud->self_ref != LUA_NOREF)) {
      FUNC5(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
      FUNC5(L, LUA_REGISTRYINDEX, mud->self_ref);  // pass the userdata(client) to callback func in lua
      call_back = true;
    }
  }

  if(mud->mqtt_state.recv_buffer) {
    FUNC1(mud->mqtt_state.recv_buffer);
    mud->mqtt_state.recv_buffer = NULL;
  }
  mud->mqtt_state.recv_buffer_size = 0;
  mud->mqtt_state.recv_buffer_state = MQTT_RECV_NORMAL;

  if(mud->pesp_conn){
    mud->pesp_conn->reverse = NULL;
    if(mud->pesp_conn->proto.tcp)
      FUNC1(mud->pesp_conn->proto.tcp);
    mud->pesp_conn->proto.tcp = NULL;
    FUNC1(mud->pesp_conn);
    mud->pesp_conn = NULL;
  }

  mud->connected = false;
  FUNC2(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = LUA_NOREF; // unref this, and the mqtt.socket userdata will delete it self

  if(call_back){
    FUNC3(L, 1, 0);
  }

  FUNC0("leave mqtt_socket_disconnected.\n");
}