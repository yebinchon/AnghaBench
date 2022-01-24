#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_9__ {TYPE_6__* password; TYPE_6__* username; TYPE_6__* client_id; TYPE_6__* will_message; TYPE_6__* will_topic; } ;
struct TYPE_8__ {TYPE_6__* recv_buffer; scalar_t__ pending_msg_q; } ;
struct TYPE_10__ {int connected; void* self_ref; void* cb_puback_ref; void* cb_unsuback_ref; void* cb_suback_ref; void* cb_overflow_ref; void* cb_message_ref; void* cb_disconnect_ref; void* cb_connect_fail_ref; void* cb_connect_ref; TYPE_3__ connect_info; TYPE_2__ mqtt_state; TYPE_6__* pesp_conn; int /*<<< orphan*/  mqttTimer; } ;
typedef  TYPE_4__ lmqtt_userdata ;
struct TYPE_7__ {TYPE_6__* tcp; } ;
struct TYPE_11__ {TYPE_1__ proto; int /*<<< orphan*/ * reverse; } ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 void* LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( lua_State* L )
{
  FUNC0("enter mqtt_delete.\n");

  lmqtt_userdata *mud = (lmqtt_userdata *)FUNC3(L, 1, "mqtt.socket");
  FUNC2(L, mud, 1, "mqtt.socket expected");
  if(mud==NULL){
    FUNC0("userdata is nil.\n");
    return 0;
  }

  FUNC8(&mud->mqttTimer);
  mud->connected = false;

  // ---- alloc-ed in mqtt_socket_connect()
  if(mud->pesp_conn){     // for client connected to tcp server, this should set NULL in disconnect cb
    mud->pesp_conn->reverse = NULL;
    if(mud->pesp_conn->proto.tcp)
      FUNC1(mud->pesp_conn->proto.tcp);
    mud->pesp_conn->proto.tcp = NULL;
    FUNC1(mud->pesp_conn);
    mud->pesp_conn = NULL;    // for socket, it will free this when disconnected
  }
  while(mud->mqtt_state.pending_msg_q) {
    FUNC7(FUNC6(&(mud->mqtt_state.pending_msg_q)));
  }

  // ---- alloc-ed in mqtt_socket_lwt()
  if(mud->connect_info.will_topic){
        FUNC1(mud->connect_info.will_topic);
        mud->connect_info.will_topic = NULL;
  }

  if(mud->connect_info.will_message){
    FUNC1(mud->connect_info.will_message);
    mud->connect_info.will_message = NULL;
  }
  // ----

  //--------- alloc-ed in mqtt_socket_received()
  if(mud->mqtt_state.recv_buffer) {
    FUNC1(mud->mqtt_state.recv_buffer);
    mud->mqtt_state.recv_buffer = NULL;
  }
  // ----

  //--------- alloc-ed in mqtt_socket_client()
  if(mud->connect_info.client_id){
    FUNC1(mud->connect_info.client_id);
    mud->connect_info.client_id = NULL;
  }
  if(mud->connect_info.username){
    FUNC1(mud->connect_info.username);
    mud->connect_info.username = NULL;
  }
  if(mud->connect_info.password){
    FUNC1(mud->connect_info.password);
    mud->connect_info.password = NULL;
  }
  // -------

  // free (unref) callback ref
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
  mud->cb_connect_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
  mud->cb_connect_fail_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
  mud->cb_disconnect_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_message_ref);
  mud->cb_message_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_overflow_ref);
  mud->cb_overflow_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_suback_ref);
  mud->cb_suback_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_unsuback_ref);
  mud->cb_unsuback_ref = LUA_NOREF;
  FUNC4(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
  mud->cb_puback_ref = LUA_NOREF;
  FUNC5(L, LUA_GCSTOP, 0);
  FUNC4(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = LUA_NOREF;
  FUNC5(L, LUA_GCRESTART, 0);
  FUNC0("leave mqtt_delete.\n");
  return 0;
}