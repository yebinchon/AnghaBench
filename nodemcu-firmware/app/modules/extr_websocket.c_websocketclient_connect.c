
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int connectionState; scalar_t__ reservedData; } ;
typedef TYPE_1__ ws_info ;
struct TYPE_5__ {int self_ref; } ;
typedef TYPE_2__ ws_data ;
typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int ws_connect (TYPE_1__*,char const*) ;

__attribute__((used)) static int websocketclient_connect(lua_State *L) {
  NODE_DBG("websocketclient_connect is called.\n");

  ws_info *ws = (ws_info *) luaL_checkudata(L, 1, METATABLE_WSCLIENT);

  ws_data *data = (ws_data *) ws->reservedData;

  if (ws->connectionState != 0 && ws->connectionState != 4) {
    return luaL_error(L, "Websocket already connecting or connected.\n");
  }
  ws->connectionState = 0;

  lua_pushvalue(L, 1);
  data->self_ref = luaL_ref(L, LUA_REGISTRYINDEX);

  const char *url = luaL_checkstring(L, 2);
  ws_connect(ws, url);

  return 0;
}
