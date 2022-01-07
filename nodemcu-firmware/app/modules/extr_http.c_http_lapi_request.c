
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int http_callback ;
 int http_callback_registry ;
 int http_request (char const*,char const*,char const*,char const*,int ,int ) ;
 char* luaL_checklstring (int *,int,int*) ;
 int luaL_error (int *,char*) ;
 int luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,int ) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int http_lapi_request( lua_State *L )
{
  int length;
  const char * url = luaL_checklstring(L, 1, &length);
  const char * method = luaL_checklstring(L, 2, &length);
  const char * headers = ((void*)0);
  const char * body = ((void*)0);


  if ((url == ((void*)0)) || (method == ((void*)0)))
  {
    return luaL_error( L, "wrong arg type" );
  }

  if (lua_isstring(L, 3))
  {
    headers = luaL_checklstring(L, 3, &length);
  }
  if (lua_isstring(L, 4))
  {
    body = luaL_checklstring(L, 4, &length);
  }

  if (lua_type(L, 5) == LUA_TFUNCTION || lua_type(L, 5) == LUA_TLIGHTFUNCTION) {
    lua_pushvalue(L, 5);
    luaL_unref(L, LUA_REGISTRYINDEX, http_callback_registry);
    http_callback_registry = luaL_ref(L, LUA_REGISTRYINDEX);
  }

  http_request(url, method, headers, body, http_callback, 0);
  return 0;
}
