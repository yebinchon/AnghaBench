
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int connectionState; scalar_t__ reservedData; int extraHeaders; } ;
typedef TYPE_1__ ws_info ;
struct TYPE_5__ {scalar_t__ onConnection; scalar_t__ onReceive; scalar_t__ onClose; scalar_t__ self_ref; } ;
typedef TYPE_2__ ws_data ;
typedef int lua_State ;


 int LUA_GCRESTART ;
 int LUA_GCSTOP ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int luaM_free (int *,TYPE_2__*) ;
 int lua_call (int *,int,int ) ;
 int lua_gc (int *,int ,int ) ;
 int lua_pushnumber (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int realloc_headers (int ,int ) ;

__attribute__((used)) static int websocketclient_gc(lua_State *L) {
  NODE_DBG("websocketclient_gc\n");

  ws_info *ws = (ws_info *) luaL_checkudata(L, 1, METATABLE_WSCLIENT);

  ws->extraHeaders = realloc_headers(ws->extraHeaders, 0);

  ws_data *data = (ws_data *) ws->reservedData;

  luaL_unref(L, LUA_REGISTRYINDEX, data->onConnection);
  luaL_unref(L, LUA_REGISTRYINDEX, data->onReceive);

  if (data->onClose != LUA_NOREF) {
    if (ws->connectionState != 4) {
      lua_rawgeti(L, LUA_REGISTRYINDEX, data->onClose);

      lua_pushnumber(L, -100);
      lua_call(L, 1, 0);
    }
    luaL_unref(L, LUA_REGISTRYINDEX, data->onClose);
  }

  if (data->self_ref != LUA_NOREF) {
    lua_gc(L, LUA_GCSTOP, 0);
    luaL_unref(L, LUA_REGISTRYINDEX, data->self_ref);
    data->self_ref = LUA_NOREF;
    lua_gc(L, LUA_GCRESTART, 0);
  }

  NODE_DBG("freeing lua data\n");
  luaM_free(L, data);
  NODE_DBG("done freeing lua data\n");

  return 0;
}
