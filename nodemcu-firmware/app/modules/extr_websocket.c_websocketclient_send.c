
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connectionState; scalar_t__ reservedData; } ;
typedef TYPE_1__ ws_info ;
typedef int ws_data ;
typedef int lua_State ;


 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 int luaL_checkint (int *,int) ;
 char* luaL_checklstring (int *,int,int*) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 int lua_gettop (int *) ;
 int ws_send (TYPE_1__*,int,char const*,unsigned short) ;

__attribute__((used)) static int websocketclient_send(lua_State *L) {
  NODE_DBG("websocketclient_send is called.\n");

  ws_info *ws = (ws_info *) luaL_checkudata(L, 1, METATABLE_WSCLIENT);

  ws_data *data = (ws_data *) ws->reservedData;

  if (ws->connectionState != 3) {

    return luaL_error(L, "Websocket isn't connected.\n");
  }

  int msgLength;
  const char *msg = luaL_checklstring(L, 2, &msgLength);

  int opCode = 1;
  if (lua_gettop(L) == 3) {
    opCode = luaL_checkint(L, 3);
  }

  ws_send(ws, opCode, msg, (unsigned short) msgLength);
  return 0;
}
