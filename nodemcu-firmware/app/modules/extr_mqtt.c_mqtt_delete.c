
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_9__ {TYPE_6__* password; TYPE_6__* username; TYPE_6__* client_id; TYPE_6__* will_message; TYPE_6__* will_topic; } ;
struct TYPE_8__ {TYPE_6__* recv_buffer; scalar_t__ pending_msg_q; } ;
struct TYPE_10__ {int connected; void* self_ref; void* cb_puback_ref; void* cb_unsuback_ref; void* cb_suback_ref; void* cb_overflow_ref; void* cb_message_ref; void* cb_disconnect_ref; void* cb_connect_fail_ref; void* cb_connect_ref; TYPE_3__ connect_info; TYPE_2__ mqtt_state; TYPE_6__* pesp_conn; int mqttTimer; } ;
typedef TYPE_4__ lmqtt_userdata ;
struct TYPE_7__ {TYPE_6__* tcp; } ;
struct TYPE_11__ {TYPE_1__ proto; int * reverse; } ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 void* LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int free (TYPE_6__*) ;
 int luaL_argcheck (int *,TYPE_4__*,int,char*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_gc (int *,int ,int ) ;
 int msg_dequeue (scalar_t__*) ;
 int msg_destroy (int ) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static int mqtt_delete( lua_State* L )
{
  NODE_DBG("enter mqtt_delete.\n");

  lmqtt_userdata *mud = (lmqtt_userdata *)luaL_checkudata(L, 1, "mqtt.socket");
  luaL_argcheck(L, mud, 1, "mqtt.socket expected");
  if(mud==((void*)0)){
    NODE_DBG("userdata is nil.\n");
    return 0;
  }

  os_timer_disarm(&mud->mqttTimer);
  mud->connected = 0;


  if(mud->pesp_conn){
    mud->pesp_conn->reverse = ((void*)0);
    if(mud->pesp_conn->proto.tcp)
      free(mud->pesp_conn->proto.tcp);
    mud->pesp_conn->proto.tcp = ((void*)0);
    free(mud->pesp_conn);
    mud->pesp_conn = ((void*)0);
  }
  while(mud->mqtt_state.pending_msg_q) {
    msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));
  }


  if(mud->connect_info.will_topic){
        free(mud->connect_info.will_topic);
        mud->connect_info.will_topic = ((void*)0);
  }

  if(mud->connect_info.will_message){
    free(mud->connect_info.will_message);
    mud->connect_info.will_message = ((void*)0);
  }



  if(mud->mqtt_state.recv_buffer) {
    free(mud->mqtt_state.recv_buffer);
    mud->mqtt_state.recv_buffer = ((void*)0);
  }



  if(mud->connect_info.client_id){
    free(mud->connect_info.client_id);
    mud->connect_info.client_id = ((void*)0);
  }
  if(mud->connect_info.username){
    free(mud->connect_info.username);
    mud->connect_info.username = ((void*)0);
  }
  if(mud->connect_info.password){
    free(mud->connect_info.password);
    mud->connect_info.password = ((void*)0);
  }



  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
  mud->cb_connect_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
  mud->cb_connect_fail_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
  mud->cb_disconnect_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_message_ref);
  mud->cb_message_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_overflow_ref);
  mud->cb_overflow_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_suback_ref);
  mud->cb_suback_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_unsuback_ref);
  mud->cb_unsuback_ref = LUA_NOREF;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
  mud->cb_puback_ref = LUA_NOREF;
  lua_gc(L, LUA_GCSTOP, 0);
  luaL_unref(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = LUA_NOREF;
  lua_gc(L, LUA_GCRESTART, 0);
  NODE_DBG("leave mqtt_delete.\n");
  return 0;
}
