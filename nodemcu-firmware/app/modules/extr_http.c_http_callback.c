
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int HTTP_STATUS_GENERIC_ERROR ;
 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int dbg_printf (char*,...) ;
 int free (char*) ;
 scalar_t__ http_callback_registry ;
 int luaL_addchar (int *,int ) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_pushresult (int *) ;
 int luaL_unref (int *,int ,scalar_t__) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_newtable (int *) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_pushnil (int *) ;
 int lua_pushnumber (int *,int) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int lua_settable (int *,int) ;
 char* strlen (char const*) ;
 int tolower (unsigned char) ;

__attribute__((used)) static void http_callback( char * response, int http_status, char ** full_response_p )
{
  const char *full_response = full_response_p ? *full_response_p : ((void*)0);
  if (http_callback_registry != LUA_NOREF)
  {
    lua_State *L = lua_getstate();

    lua_rawgeti(L, LUA_REGISTRYINDEX, http_callback_registry);

    lua_pushnumber(L, http_status);
    if ( http_status != HTTP_STATUS_GENERIC_ERROR && response)
    {
      lua_pushstring(L, response);
      lua_newtable(L);

      const char *p = full_response;


      while (*p && *p != '\n') {
        p++;
      }
      if (*p == '\n') {
        p++;
      }

      while (*p && *p != '\r' && *p != '\n') {
        const char *eol = p;
        while (*eol && *eol != '\r') {
          eol++;
        }

        const char *colon = p;
        while (*colon != ':' && colon < eol) {
          colon++;
        }

        if (*colon != ':') {
          break;
        }

        const char *value = colon + 1;
        while (*value == ' ') {
          value++;
        }

        luaL_Buffer b;
        luaL_buffinit(L, &b);
        while (p < colon) {
          luaL_addchar(&b, tolower((unsigned char) *p));
          p++;
        }
        luaL_pushresult(&b);

        lua_pushlstring(L, value, eol - value);
        lua_settable(L, -3);

        p = eol + 1;
        if (*p == '\n') {
          p++;
        }
      }
    }
    else
    {
      lua_pushnil(L);
      lua_pushnil(L);
    }

    if (full_response_p && *full_response_p) {
      free(*full_response_p);
      *full_response_p = ((void*)0);
    }

    luaL_unref(L, LUA_REGISTRYINDEX, http_callback_registry);
    http_callback_registry = LUA_NOREF;

    lua_call(L, 3, 0);
  }
}
