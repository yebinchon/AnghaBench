
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mode; } ;
struct game_capture {int deactivate_hook; TYPE_1__ config; } ;
typedef int obs_hotkey_t ;
typedef int obs_hotkey_pair_id ;


 scalar_t__ CAPTURE_MODE_HOTKEY ;
 int info (char*) ;
 int os_atomic_set_bool (int *,int) ;

__attribute__((used)) static bool hotkey_stop(void *data, obs_hotkey_pair_id id, obs_hotkey_t *hotkey,
   bool pressed)
{
 struct game_capture *gc = data;

 if (pressed && gc->config.mode == CAPTURE_MODE_HOTKEY) {
  info("Deactivate hotkey pressed");
  os_atomic_set_bool(&gc->deactivate_hook, 1);
 }

 return 1;
}
