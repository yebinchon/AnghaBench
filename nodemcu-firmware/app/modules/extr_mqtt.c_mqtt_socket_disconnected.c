
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct espconn {scalar_t__ reverse; } ;
typedef int lua_State ;
struct TYPE_5__ {int recv_buffer_state; scalar_t__ recv_buffer_size; TYPE_4__* recv_buffer; } ;
struct TYPE_7__ {int connected; scalar_t__ cb_disconnect_ref; scalar_t__ self_ref; TYPE_4__* pesp_conn; TYPE_1__ mqtt_state; int mqttTimer; } ;
typedef TYPE_3__ lmqtt_userdata ;
struct TYPE_6__ {TYPE_4__* tcp; } ;
struct TYPE_8__ {TYPE_2__ proto; int * reverse; } ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int MQTT_RECV_NORMAL ;
 int NODE_DBG (char*) ;
 int free (TYPE_4__*) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int os_timer_disarm (int *) ;

__attribute__((used)) static void mqtt_socket_disconnected(void *arg)
{
  NODE_DBG("enter mqtt_socket_disconnected.\n");
  struct espconn *pesp_conn = arg;
  bool call_back = 0;
  if(pesp_conn == ((void*)0))
    return;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == ((void*)0))
    return;

  os_timer_disarm(&mud->mqttTimer);

  lua_State *L = lua_getstate();

  if(mud->connected){
    mud->connected = 0;
    if((mud->cb_disconnect_ref != LUA_NOREF) && (mud->self_ref != LUA_NOREF)) {
      lua_rawgeti(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
      lua_rawgeti(L, LUA_REGISTRYINDEX, mud->self_ref);
      call_back = 1;
    }
  }

  if(mud->mqtt_state.recv_buffer) {
    free(mud->mqtt_state.recv_buffer);
    mud->mqtt_state.recv_buffer = ((void*)0);
  }
  mud->mqtt_state.recv_buffer_size = 0;
  mud->mqtt_state.recv_buffer_state = MQTT_RECV_NORMAL;

  if(mud->pesp_conn){
    mud->pesp_conn->reverse = ((void*)0);
    if(mud->pesp_conn->proto.tcp)
      free(mud->pesp_conn->proto.tcp);
    mud->pesp_conn->proto.tcp = ((void*)0);
    free(mud->pesp_conn);
    mud->pesp_conn = ((void*)0);
  }

  mud->connected = 0;
  luaL_unref(L, LUA_REGISTRYINDEX, mud->self_ref);
  mud->self_ref = LUA_NOREF;

  if(call_back){
    lua_call(L, 1, 0);
  }

  NODE_DBG("leave mqtt_socket_disconnected.\n");
}
