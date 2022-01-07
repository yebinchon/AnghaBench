
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; int * script; } ;
typedef int lua_State ;
typedef int lua_Number ;


 int call_func (void (*) (void*,float),int,int ) ;
 int lock_callback () ;
 int lua_pushnumber (int *,int ) ;
 int obs_remove_tick_callback (void (*) (void*,float),struct lua_obs_callback*) ;
 int unlock_callback () ;

__attribute__((used)) static void obs_lua_tick_callback(void *priv, float seconds)
{
 struct lua_obs_callback *cb = priv;
 lua_State *script = cb->script;

 if (cb->base.removed) {
  obs_remove_tick_callback(obs_lua_tick_callback, cb);
  return;
 }

 lock_callback();

 lua_pushnumber(script, (lua_Number)seconds);
 call_func(obs_lua_tick_callback, 1, 0);

 unlock_callback();
}
