
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* reservedData; int * onFailure; int * onReceive; int * onConnection; int * extraHeaders; scalar_t__ connectionState; } ;
typedef TYPE_1__ ws_info ;
struct TYPE_4__ {void* self_ref; void* onClose; void* onReceive; void* onConnection; } ;
typedef TYPE_2__ ws_data ;
typedef int lua_State ;


 void* LUA_NOREF ;
 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ luaM_malloc (int *,int) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int websocketclient_onCloseCallback ;
 int websocketclient_onConnectionCallback ;
 int websocketclient_onReceiveCallback ;

__attribute__((used)) static int websocket_createClient(lua_State *L) {
  NODE_DBG("websocket_createClient\n");


  ws_data *data = (ws_data *) luaM_malloc(L, sizeof(ws_data));
  data->onConnection = LUA_NOREF;
  data->onReceive = LUA_NOREF;
  data->onClose = LUA_NOREF;
  data->self_ref = LUA_NOREF;

  ws_info *ws = (ws_info *) lua_newuserdata(L, sizeof(ws_info));
  ws->connectionState = 0;
  ws->extraHeaders = ((void*)0);
  ws->onConnection = &websocketclient_onConnectionCallback;
  ws->onReceive = &websocketclient_onReceiveCallback;
  ws->onFailure = &websocketclient_onCloseCallback;
  ws->reservedData = data;


  luaL_getmetatable(L, METATABLE_WSCLIENT);
  lua_setmetatable(L, -2);

  return 1;
}
