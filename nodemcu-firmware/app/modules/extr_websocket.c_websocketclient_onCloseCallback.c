
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * reservedData; } ;
typedef TYPE_1__ ws_info ;
struct TYPE_5__ {scalar_t__ onClose; scalar_t__ self_ref; } ;
typedef TYPE_2__ ws_data ;
typedef int lua_State ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int NODE_DBG (char*) ;
 int luaL_error (int *,char*) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_call (int *,int,int ) ;
 int lua_gc (int *,int ,int ) ;
 int * lua_getstate () ;
 int lua_pushnumber (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

__attribute__((used)) static void websocketclient_onCloseCallback(ws_info *ws, int errorCode) {
  NODE_DBG("websocketclient_onCloseCallback\n");

  lua_State *L = lua_getstate();

  if (ws == ((void*)0) || ws->reservedData == ((void*)0)) {
    luaL_error(L, "Client websocket is nil.\n");
    return;
  }
  ws_data *data = (ws_data *) ws->reservedData;

  if (data->onClose != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, data->onClose);
    lua_rawgeti(L, LUA_REGISTRYINDEX, data->self_ref);
    lua_pushnumber(L, errorCode);
    lua_call(L, 2, 0);
  }


  lua_gc(L, LUA_GCSTOP, 0);
  luaL_unref(L, LUA_REGISTRYINDEX, data->self_ref);
  data->self_ref = LUA_NOREF;
  lua_gc(L, LUA_GCRESTART, 0);
}
