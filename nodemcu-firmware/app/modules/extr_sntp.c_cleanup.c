
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int list_ref; int err_cb_ref; int sync_cb_ref; int pcb; int timer; } ;


 int LUA_REGISTRYINDEX ;
 int free (TYPE_1__*) ;
 int luaL_unref (int *,int ,int ) ;
 int os_timer_disarm (int *) ;
 TYPE_1__* state ;
 int udp_remove (int ) ;

__attribute__((used)) static void cleanup (lua_State *L)
{
  os_timer_disarm (&state->timer);
  udp_remove (state->pcb);
  luaL_unref (L, LUA_REGISTRYINDEX, state->sync_cb_ref);
  luaL_unref (L, LUA_REGISTRYINDEX, state->err_cb_ref);
  luaL_unref (L, LUA_REGISTRYINDEX, state->list_ref);
  free (state);
  state = 0;
}
