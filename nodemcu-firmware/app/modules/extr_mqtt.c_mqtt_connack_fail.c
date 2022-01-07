
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ cb_connect_fail_ref; scalar_t__ self_ref; } ;
typedef TYPE_1__ lmqtt_userdata ;


 scalar_t__ LUA_NOREF ;
 int LUA_REGISTRYINDEX ;
 int lua_call (int *,int,int ) ;
 int * lua_getstate () ;
 int lua_pushinteger (int *,int) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;

__attribute__((used)) static void mqtt_connack_fail(lmqtt_userdata * mud, int reason_code)
{
  if(mud->cb_connect_fail_ref == LUA_NOREF || mud->self_ref == LUA_NOREF)
  {
    return;
  }

  lua_State *L = lua_getstate();

  lua_rawgeti(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
  lua_rawgeti(L, LUA_REGISTRYINDEX, mud->self_ref);
  lua_pushinteger(L, reason_code);
  lua_call(L, 2, 0);
}
