
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ removed; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
typedef int obs_hotkey_t ;
typedef int * obs_hotkey_id ;


 int UNUSED_PARAMETER (int *) ;
 int defer_call_post (int ,struct lua_obs_callback*) ;
 int defer_hotkey_pressed ;
 int defer_hotkey_unpressed ;

__attribute__((used)) static void hotkey_callback(void *p_cb, obs_hotkey_id id, obs_hotkey_t *hotkey,
       bool pressed)
{
 struct lua_obs_callback *cb = p_cb;

 if (cb->base.removed)
  return;

 if (pressed)
  defer_call_post(defer_hotkey_pressed, cb);
 else
  defer_call_post(defer_hotkey_unpressed, cb);

 UNUSED_PARAMETER(hotkey);
 UNUSED_PARAMETER(id);
}
