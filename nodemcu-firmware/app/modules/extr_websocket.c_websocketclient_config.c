
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* extraHeaders; scalar_t__ reservedData; } ;
typedef TYPE_1__ ws_info ;
typedef int ws_data ;
typedef int lua_State ;
struct TYPE_6__ {int * value; void* key; } ;
typedef TYPE_2__ header_t ;


 int LUA_TTABLE ;
 int METATABLE_WSCLIENT ;
 int NODE_DBG (char*) ;
 int luaL_checktype (int *,int,int ) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int lua_getfield (int *,int,char*) ;
 scalar_t__ lua_istable (int *,int) ;
 scalar_t__ lua_next (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_tostring (int *,int) ;
 TYPE_2__* realloc_headers (TYPE_2__*,int) ;
 void* strdup (int ) ;

__attribute__((used)) static int websocketclient_config(lua_State *L) {
  NODE_DBG("websocketclient_config is called.\n");

  ws_info *ws = (ws_info *) luaL_checkudata(L, 1, METATABLE_WSCLIENT);

  ws_data *data = (ws_data *) ws->reservedData;

  luaL_checktype(L, 2, LUA_TTABLE);
  lua_getfield(L, 2, "headers");
  if(lua_istable(L, -1)) {

    lua_pushnil(L);
    int size = 0;
    while(lua_next(L, -2)) {
      size++;
      lua_pop(L, 1);
    }

    ws->extraHeaders = realloc_headers(ws->extraHeaders, size);
    if(ws->extraHeaders) {
      header_t *header = ws->extraHeaders;

      lua_pushnil(L);
      while(lua_next(L, -2)) {
        header->key = strdup(lua_tostring(L, -2));
        header->value = strdup(lua_tostring(L, -1));
        header++;
        lua_pop(L, 1);
      }

      header->key = header->value = ((void*)0);
    }
  }
  lua_pop(L, 1);

  return 0;
}
