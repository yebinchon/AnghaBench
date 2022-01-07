
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int ptrdiff_t ;
struct TYPE_3__ {int* buf; } ;
typedef TYPE_1__ packet_t ;
typedef int lua_State ;
typedef int luaL_Buffer ;


 int luaL_addstring (int *,char const*) ;
 int luaL_buffinit (int *,int *) ;
 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_optinteger (int *,int,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaL_pushresult (int *) ;
 int lua_pushliteral (int *,char*) ;
 int posrelat (int ,int) ;

__attribute__((used)) static int packet_subhex(lua_State *L, int buf_offset, int buf_length) {
  packet_t *packet = luaL_checkudata(L, 1, "wifi.packet");

  ptrdiff_t start = posrelat(luaL_checkinteger(L, 2), buf_length);
  ptrdiff_t end = posrelat(luaL_optinteger(L, 3, -1), buf_length);
  const char *sep = luaL_optstring(L, 4, "");

  if (start < 1) start = 1;
  if (end > buf_length) end = buf_length;
  if (start <= end) {
    luaL_Buffer b;
    luaL_buffinit(L, &b);

    int i;
    for (i = start - 1; i < end; i++) {
      char hex[3];

      if (i >= start) {
        luaL_addstring(&b, sep);
      }

      uint8 c = packet->buf[i + buf_offset];

      hex[0] = "0123456789abcdef"[c >> 4];
      hex[1] = "0123456789abcdef"[c & 0xf];
      hex[2] = 0;
      luaL_addstring(&b, hex);
    }

    luaL_pushresult(&b);
  } else {
    lua_pushliteral(L, "");
  }

  return 1;
}
