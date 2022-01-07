
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct espconn {int dummy; } ;
typedef scalar_t__ sint8 ;
typedef int msg_queue_t ;
typedef int mqtt_message_t ;
typedef int lua_State ;
struct TYPE_4__ {int pending_msg_q; int mqtt_connection; } ;
struct TYPE_5__ {TYPE_1__ mqtt_state; int * pesp_conn; int cb_puback_ref; int connected; } ;
typedef TYPE_2__ lmqtt_userdata ;


 scalar_t__ ESPCONN_OK ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int MQTT_BUF_SIZE ;
 int MQTT_MSG_TYPE_PUBLISH ;
 int NODE_DBG (char*,...) ;
 int luaL_argcheck (int *,TYPE_2__*,int,char*) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int mqtt_msg_init (int *,int*,int) ;
 int * mqtt_msg_publish (int *,char const*,char const*,size_t,int,int,int *) ;
 scalar_t__ mqtt_send_if_possible (int *) ;
 int * msg_enqueue (int *,int *,int ,int ,int) ;
 int msg_size (int *) ;

__attribute__((used)) static int mqtt_socket_publish( lua_State* L )
{
  NODE_DBG("enter mqtt_socket_publish.\n");
  struct espconn *pesp_conn = ((void*)0);
  lmqtt_userdata *mud;
  size_t l;
  uint8_t stack = 1;
  uint16_t msg_id = 0;

  mud = (lmqtt_userdata *)luaL_checkudata(L, stack, "mqtt.socket");
  luaL_argcheck(L, mud, stack, "mqtt.socket expected");
  stack++;
  if(mud==((void*)0)){
    NODE_DBG("userdata is nil.\n");
    lua_pushboolean(L, 0);
    return 1;
  }

  if(mud->pesp_conn == ((void*)0)){
    NODE_DBG("mud->pesp_conn is NULL.\n");
    lua_pushboolean(L, 0);
    return 1;
  }

  if(!mud->connected){
    return luaL_error( L, "not connected" );
  }

  const char *topic = luaL_checklstring( L, stack, &l );
  stack ++;
  if (topic == ((void*)0)){
    return luaL_error( L, "need topic" );
  }

  const char *payload = luaL_checklstring( L, stack, &l );
  stack ++;
  uint8_t qos = luaL_checkinteger( L, stack);
  stack ++;
  uint8_t retain = luaL_checkinteger( L, stack);
  stack ++;

  uint8_t temp_buffer[MQTT_BUF_SIZE];
  mqtt_msg_init(&mud->mqtt_state.mqtt_connection, temp_buffer, MQTT_BUF_SIZE);
  mqtt_message_t *temp_msg = mqtt_msg_publish(&mud->mqtt_state.mqtt_connection,
                       topic, payload, l,
                       qos, retain,
                       &msg_id);

  if (lua_type(L, stack) == LUA_TFUNCTION || lua_type(L, stack) == LUA_TLIGHTFUNCTION){
    lua_pushvalue(L, stack);
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
    mud->cb_puback_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }

  msg_queue_t *node = msg_enqueue(&(mud->mqtt_state.pending_msg_q), temp_msg,
                      msg_id, MQTT_MSG_TYPE_PUBLISH, (int)qos );

  sint8 espconn_status = ESPCONN_OK;

  espconn_status = mqtt_send_if_possible(mud->pesp_conn);

  if(!node || espconn_status != ESPCONN_OK){
    lua_pushboolean(L, 0);
  } else {
    lua_pushboolean(L, 1);
  }

  NODE_DBG("publish, queue size: %d\n", msg_size(&(mud->mqtt_state.pending_msg_q)));
  NODE_DBG("leave mqtt_socket_publish.\n");
  return 1;
}
