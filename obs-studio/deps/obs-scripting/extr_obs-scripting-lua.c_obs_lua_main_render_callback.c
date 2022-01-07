
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; int * script; } ;
typedef int lua_State ;
typedef int lua_Integer ;


 int call_func (void (*) (void*,scalar_t__,scalar_t__),int,int ) ;
 int lock_callback () ;
 int lua_pushinteger (int *,int ) ;
 int obs_remove_main_render_callback (void (*) (void*,scalar_t__,scalar_t__),struct lua_obs_callback*) ;
 int unlock_callback () ;

__attribute__((used)) static void obs_lua_main_render_callback(void *priv, uint32_t cx, uint32_t cy)
{
 struct lua_obs_callback *cb = priv;
 lua_State *script = cb->script;

 if (cb->base.removed) {
  obs_remove_main_render_callback(obs_lua_main_render_callback,
      cb);
  return;
 }

 lock_callback();

 lua_pushinteger(script, (lua_Integer)cx);
 lua_pushinteger(script, (lua_Integer)cy);
 call_func(obs_lua_main_render_callback, 2, 0);

 unlock_callback();
}
