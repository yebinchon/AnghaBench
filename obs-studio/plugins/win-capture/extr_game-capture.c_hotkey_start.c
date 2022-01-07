
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct game_capture {int activate_hook_now; int deactivate_hook; int hotkey_window; TYPE_1__ config; } ;
typedef int obs_hotkey_t ;
typedef int obs_hotkey_pair_id ;


 scalar_t__ CAPTURE_MODE_HOTKEY ;
 scalar_t__ GetForegroundWindow () ;
 int info (char*) ;
 int os_atomic_set_bool (int *,int) ;
 int os_atomic_set_long (int *,long) ;

__attribute__((used)) static bool hotkey_start(void *data, obs_hotkey_pair_id id,
    obs_hotkey_t *hotkey, bool pressed)
{
 struct game_capture *gc = data;

 if (pressed && gc->config.mode == CAPTURE_MODE_HOTKEY) {
  info("Activate hotkey pressed");
  os_atomic_set_long(&gc->hotkey_window,
       (long)(uintptr_t)GetForegroundWindow());
  os_atomic_set_bool(&gc->deactivate_hook, 1);
  os_atomic_set_bool(&gc->activate_hook_now, 1);
 }

 return 1;
}
