
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {void* cb_unsuback_ref; void* cb_suback_ref; void* cb_puback_ref; void* cb_overflow_ref; void* cb_message_ref; void* cb_disconnect_ref; void* cb_connect_ref; } ;
typedef TYPE_1__ lmqtt_userdata ;


 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int luaL_argcheck (int *,TYPE_1__*,int,char*) ;
 int luaL_checkanyfunction (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 scalar_t__ luaL_checkudata (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 void* luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,void*) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int mqtt_socket_on( lua_State* L )
{
  NODE_DBG("enter mqtt_socket_on.\n");
  lmqtt_userdata *mud;
  size_t sl;

  mud = (lmqtt_userdata *)luaL_checkudata(L, 1, "mqtt.socket");
  luaL_argcheck(L, mud, 1, "mqtt.socket expected");
  if(mud==((void*)0)){
    NODE_DBG("userdata is nil.\n");
    return 0;
  }

  const char *method = luaL_checklstring( L, 2, &sl );
  if (method == ((void*)0))
    return luaL_error( L, "wrong arg type" );

  luaL_checkanyfunction(L, 3);
  lua_pushvalue(L, 3);

  if( sl == 7 && strcmp(method, "connect") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
    mud->cb_connect_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 7 && strcmp(method, "offline") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
    mud->cb_disconnect_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 7 && strcmp(method, "message") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_message_ref);
    mud->cb_message_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 8 && strcmp(method, "overflow") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_overflow_ref);
    mud->cb_overflow_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 6 && strcmp(method, "puback") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
    mud->cb_puback_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 6 && strcmp(method, "suback") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_suback_ref);
    mud->cb_suback_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else if( sl == 8 && strcmp(method, "unsuback") == 0){
    luaL_unref(L, LUA_REGISTRYINDEX, mud->cb_unsuback_ref);
    mud->cb_unsuback_ref = luaL_ref(L, LUA_REGISTRYINDEX);
  }else{
    lua_pop(L, 1);
    return luaL_error( L, "method not supported" );
  }
  NODE_DBG("leave mqtt_socket_on.\n");
  return 0;
}
