
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_key_t ;
struct TYPE_3__ {int name_map; int name_map_init_token; } ;
struct TYPE_4__ {TYPE_1__ hotkeys; } ;


 int OBS_KEY_NONE ;
 int init_name_map ;
 TYPE_2__* obs ;
 scalar_t__ obs_hotkey_name_map_lookup (int ,char const*,int*) ;
 int obs_key_from_name_fallback (char const*) ;
 scalar_t__ pthread_once (int *,int ) ;

obs_key_t obs_key_from_name(const char *name)
{
 if (!obs)
  return obs_key_from_name_fallback(name);

 if (pthread_once(&obs->hotkeys.name_map_init_token, init_name_map))
  return obs_key_from_name_fallback(name);

 int v = 0;
 if (obs_hotkey_name_map_lookup(obs->hotkeys.name_map, name, &v))
  return v;

 return OBS_KEY_NONE;
}
