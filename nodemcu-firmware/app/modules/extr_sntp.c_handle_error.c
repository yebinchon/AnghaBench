
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ntp_err_t ;
typedef int lua_State ;
struct TYPE_2__ {scalar_t__ err_cb_ref; } ;


 scalar_t__ LUA_NOREF ;
 scalar_t__ LUA_REFNIL ;
 int LUA_REGISTRYINDEX ;
 int cleanup (int *) ;
 int lua_call (int *,int,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawgeti (int *,int ,scalar_t__) ;
 int sntp_dbg (char*) ;
 TYPE_1__* state ;

__attribute__((used)) static void handle_error (lua_State *L, ntp_err_t err, const char *msg)
{
  sntp_dbg("sntp: handle_error\n");
  if (state->err_cb_ref != LUA_NOREF && state->err_cb_ref != LUA_REFNIL)
  {
    lua_rawgeti (L, LUA_REGISTRYINDEX, state->err_cb_ref);
    lua_pushinteger (L, err);
    lua_pushstring (L, msg);
    cleanup (L);
    lua_call (L, 2, 0);
  }
  else
    cleanup (L);
}
