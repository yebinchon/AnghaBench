
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int obs_key_t ;
struct TYPE_5__ {int* vk_codes; } ;
typedef TYPE_2__ obs_hotkeys_platform_t ;
struct TYPE_4__ {TYPE_2__* platform_context; } ;
struct TYPE_6__ {TYPE_1__ hotkeys; } ;


 size_t OBS_KEY_LAST_VALUE ;
 int OBS_KEY_NONE ;
 TYPE_3__* obs ;

obs_key_t obs_key_from_virtual_key(int code)
{
 obs_hotkeys_platform_t *platform = obs->hotkeys.platform_context;

 for (size_t i = 0; i < OBS_KEY_LAST_VALUE; i++) {
  if (platform->vk_codes[i] == code) {
   return (obs_key_t)i;
  }
 }

 return OBS_KEY_NONE;
}
