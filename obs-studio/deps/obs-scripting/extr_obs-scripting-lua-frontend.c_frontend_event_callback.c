
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; int * script; } ;
typedef int lua_State ;
typedef enum obs_frontend_event { ____Placeholder_obs_frontend_event } obs_frontend_event ;


 int call_func (void (*) (int,void*),int,int ) ;
 int lock_callback () ;
 int lua_pushinteger (int *,int) ;
 int obs_frontend_remove_event_callback (void (*) (int,void*),struct lua_obs_callback*) ;
 int unlock_callback () ;

__attribute__((used)) static void frontend_event_callback(enum obs_frontend_event event, void *priv)
{
 struct lua_obs_callback *cb = priv;
 lua_State *script = cb->script;

 if (cb->base.removed) {
  obs_frontend_remove_event_callback(frontend_event_callback, cb);
  return;
 }

 lock_callback();

 lua_pushinteger(script, (int)event);
 call_func(frontend_event_callback, 1, 0);

 unlock_callback();
}
