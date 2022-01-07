
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; int * script; } ;
typedef int lua_State ;


 int call_func (void (*) (void*,int),int,int ) ;
 int lock_callback () ;
 int lua_pushboolean (int *,int) ;
 int unlock_callback () ;

__attribute__((used)) static void hotkey_pressed(void *p_cb, bool pressed)
{
 struct lua_obs_callback *cb = p_cb;
 lua_State *script = cb->script;

 if (cb->base.removed)
  return;

 lock_callback();

 lua_pushboolean(script, pressed);
 call_func(hotkey_pressed, 1, 0);

 unlock_callback();
}
