
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; } ;
typedef TYPE_1__ packet_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 TYPE_1__* luaL_checkudata (int *,int,char*) ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int packet_byte(lua_State *L, int buf_offset, int buf_length) {
  packet_t *packet = luaL_checkudata(L, 1, "wifi.packet");

  int offset = luaL_checkinteger(L, 2);

  if (offset < 1 || offset > buf_length) {
    return 0;
  }

  lua_pushinteger(L, packet->buf[offset - 1 + buf_offset]);

  return 1;
}
