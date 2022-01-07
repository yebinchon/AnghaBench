
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ packet_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,int,int) ;
 int posrelat (int ,int) ;

__attribute__((used)) static int packet_sub(lua_State *L, int buf_offset, int buf_length) {
  packet_t *packet = luaL_checkudata(L, 1, "wifi.packet");

  ptrdiff_t start = posrelat(luaL_checkinteger(L, 2), buf_length);
  ptrdiff_t end = posrelat(luaL_optinteger(L, 3, -1), buf_length);

  if (start < 1) start = 1;
  if (end > buf_length) end = buf_length;
  if (start <= end) {
    lua_pushlstring(L, packet->buf+start-1 + buf_offset, end-start+1);
  } else {
    lua_pushliteral(L, "");
  }

  return 1;
}
