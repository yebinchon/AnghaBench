
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {int list_ref; int err_cb_ref; int sync_cb_ref; } ;
struct TYPE_3__ {int is_on_timeout; void* list_ref; void* err_cb_ref; void* sync_cb_ref; } ;


 int LUA_REGISTRYINDEX ;
 void* luaL_ref (int *,int ) ;
 int * lua_getstate () ;
 int lua_rawgeti (int *,int ,int ) ;
 TYPE_2__* repeat ;
 scalar_t__ server_count ;
 int sntp_dbg (char*) ;
 int sntp_dolookups (int *) ;
 TYPE_1__* state ;
 int state_init (int *) ;

__attribute__((used)) static void on_long_timeout (void *arg)
{
  (void)arg;
  sntp_dbg("sntp: long timer\n");
  lua_State *L = lua_getstate ();
  if (!state) {
    if (!state_init(L)) {

      lua_rawgeti(L, LUA_REGISTRYINDEX, repeat->sync_cb_ref);
      state->sync_cb_ref = luaL_ref(L, LUA_REGISTRYINDEX);
      lua_rawgeti(L, LUA_REGISTRYINDEX, repeat->err_cb_ref);
      state->err_cb_ref = luaL_ref(L, LUA_REGISTRYINDEX);
      if (server_count == 0) {
        lua_rawgeti(L, LUA_REGISTRYINDEX, repeat->list_ref);
        state->list_ref = luaL_ref(L, LUA_REGISTRYINDEX);
      }
      state->is_on_timeout = 1;
      sntp_dolookups(L);
    }
  }
}
