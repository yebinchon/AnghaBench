
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t obs_key_t ;
struct TYPE_3__ {char const** translations; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 size_t OBS_KEY_NONE ;
 TYPE_2__* obs ;

const char *obs_get_hotkey_translation(obs_key_t key, const char *def)
{
 if (key == OBS_KEY_NONE) {
  return ((void*)0);
 }

 return obs->hotkeys.translations[key] ? obs->hotkeys.translations[key]
           : def;
}
