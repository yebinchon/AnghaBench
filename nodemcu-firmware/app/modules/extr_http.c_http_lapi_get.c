
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TFUNCTION ;
 scalar_t__ LUA_TLIGHTFUNCTION ;
 int http_callback ;
 scalar_t__ http_callback_registry ;
 int http_get (char const*,char const*,int ) ;
 char* luaL_checklstring (int *,int,int*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_ref (int *,int ) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushvalue (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int http_lapi_get( lua_State *L )
{
  int length;
  const char * url = luaL_checklstring(L, 1, &length);
  const char * headers = ((void*)0);


  if ((url == ((void*)0)))
  {
    return luaL_error( L, "wrong arg type" );
  }

  if (lua_isstring(L, 2))
  {
    headers = luaL_checklstring(L, 2, &length);
  }

  if (lua_type(L, 3) == LUA_TFUNCTION || lua_type(L, 3) == LUA_TLIGHTFUNCTION) {
    lua_pushvalue(L, 3);
    if (http_callback_registry != LUA_NOREF)
      luaL_unref(L, LUA_REGISTRYINDEX, http_callback_registry);
    http_callback_registry = luaL_ref(L, LUA_REGISTRYINDEX);
  }

  http_get(url, headers, http_callback);
  return 0;
}
