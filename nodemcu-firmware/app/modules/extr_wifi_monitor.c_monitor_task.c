
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ len; int buf; } ;
typedef TYPE_1__ packet_t ;
typedef scalar_t__ os_param_t ;
typedef int lua_State ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int free (TYPE_1__*) ;
 int luaL_getmetatable (int *,char*) ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 scalar_t__ lua_newuserdata (int *,scalar_t__) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int lua_setmetatable (int *,int) ;
 int memcpy (int ,int ,scalar_t__) ;
 scalar_t__ recv_cb ;

__attribute__((used)) static void monitor_task(os_param_t param, uint8_t prio)
{
  packet_t *input = (packet_t *) param;
  (void) prio;

  lua_State *L = lua_getstate();

  if (recv_cb != LUA_NOREF) {
    lua_rawgeti(L, LUA_REGISTRYINDEX, recv_cb);

    packet_t *packet = (packet_t *) lua_newuserdata(L, input->len + sizeof(packet_t));
    packet->len = input->len;
    memcpy(packet->buf, input->buf, input->len);
    luaL_getmetatable(L, "wifi.packet");
    lua_setmetatable(L, -2);

    free(input);

    lua_call(L, 1, 0);
  } else {
    free(input);
  }
}
