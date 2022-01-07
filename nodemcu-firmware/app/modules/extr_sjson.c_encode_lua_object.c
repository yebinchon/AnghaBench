
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
typedef int luaL_Buffer ;
struct TYPE_3__ {scalar_t__ null_ref; } ;
typedef TYPE_1__ ENC_DATA ;


 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;





 int luaL_addchar (int *,char const) ;
 int luaL_addstring (int *,char const*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_error (int *,char*,int) ;
 int luaL_pushresult (int *) ;
 scalar_t__ lua_equal (int *,int,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int lua_toboolean (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int lua_type (int *,int) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void encode_lua_object(lua_State *L, ENC_DATA *data, int argno, const char *prefix, const char *suffix) {
  luaL_Buffer b;
  luaL_buffinit(L, &b);

  luaL_addstring(&b, prefix);

  int type = lua_type(L, argno);

  if (type == 128) {

    if (data->null_ref != LUA_REFNIL) {
      lua_rawgeti(L, LUA_REGISTRYINDEX, data->null_ref);
      if (lua_equal(L, -1, -2)) {
        type = 130;
      }
      lua_pop(L, 1);
    }
  }

  switch (type) {
    default:
      luaL_error(L, "Cannot encode type %d", type);
      break;

    case 131:
    case 130:
      luaL_addstring(&b, "null");
      break;

    case 132:
      luaL_addstring(&b, lua_toboolean(L, argno) ? "true" : "false");
      break;

    case 129:
    {
      lua_pushvalue(L, argno);
      size_t len;
      const char *str = lua_tolstring(L, -1, &len);
      char value[len + 1];
      strcpy(value, str);
      lua_pop(L, 1);
      luaL_addstring(&b, value);
      break;
    }

    case 128:
    {
      luaL_addchar(&b, '"');
      size_t len;
      const char *str = lua_tolstring(L, argno, &len);
      while (len > 0) {
        if ((*str & 0xff) < 0x20) {
          char value[8];
          value[0] = '\\';

          char *d = value + 1;

          switch(*str) {
            case '\f':
              *d++ = 'f';
              break;
            case '\n':
              *d++ = 'n';
              break;
            case '\t':
              *d++ = 't';
              break;
            case '\r':
              *d++ = 'r';
              break;
            case '\b':
              *d++ = 'b';
              break;

            default:
              *d++ = 'u';
              *d++ = '0';
              *d++ = '0';
              *d++ = "0123456789abcdef"[(*str >> 4) & 0xf];
              *d++ = "0123456789abcdef"[(*str ) & 0xf];
              break;

          }
          *d = '\0';
          luaL_addstring(&b, value);
        } else if (*str == '"') {
          luaL_addstring(&b, "\\\"");
        } else {
          luaL_addchar(&b, *str);
        }
        str++;
        len--;
      }
      luaL_addchar(&b, '"');
      break;
    }
  }

  luaL_addstring(&b, suffix);
  luaL_pushresult(&b);
}
