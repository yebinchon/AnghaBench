
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * reservedData; } ;
typedef TYPE_1__ ws_info ;
struct TYPE_5__ {scalar_t__ onReceive; scalar_t__ self_ref; } ;
typedef TYPE_2__ ws_data ;
typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int luaL_error (int *,char*) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushlstring (int *,char*,int) ;
 int lua_pushnumber (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

__attribute__((used)) static void websocketclient_onReceiveCallback(ws_info *ws, int len, char *message, int opCode) {
  NODE_DBG("websocketclient_onReceiveCallback\n");

  lua_State *L = lua_getstate();

  if (ws == ((void*)0) || ws->reservedData == ((void*)0)) {
    luaL_error(L, "Client websocket is nil.\n");
    return;
  }
  ws_data *data = (ws_data *) ws->reservedData;

  if (data->onReceive != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, data->onReceive);
    lua_rawgeti(L, LUA_REGISTRYINDEX, data->self_ref);
    lua_pushlstring(L, message, len);
    lua_pushnumber(L, opCode);
    lua_call(L, 3, 0);
  }
}
