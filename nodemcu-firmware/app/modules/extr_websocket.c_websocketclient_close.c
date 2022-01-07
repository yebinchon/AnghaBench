
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws_info ;
typedef int lua_State ;


 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int ws_close (int *) ;

__attribute__((used)) static int websocketclient_close(lua_State *L) {
  NODE_DBG("websocketclient_close.\n");
  ws_info *ws = (ws_info *) luaL_checkudata(L, 1, METATABLE_WSCLIENT);

  ws_close(ws);
  return 0;
}
