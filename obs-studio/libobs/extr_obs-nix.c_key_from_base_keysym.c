
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xcb_keysym_t ;
typedef int obs_key_t ;
struct TYPE_3__ {scalar_t__* base_keysyms; } ;
typedef TYPE_1__ obs_hotkeys_platform_t ;


 size_t OBS_KEY_LAST_VALUE ;
 int OBS_KEY_NONE ;

__attribute__((used)) static obs_key_t key_from_base_keysym(obs_hotkeys_platform_t *context,
          xcb_keysym_t code)
{
 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++) {
  if (context->base_keysyms[i] == (xcb_keysym_t)code) {
   return (obs_key_t)i;
  }
 }

 return OBS_KEY_NONE;
}
