
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t obs_key_t ;


 int LOG_ERROR ;
 size_t OBS_KEY_LAST_VALUE ;
 int blog (int ,char*,int) ;
 char const** obs_key_names ;

const char *obs_key_to_name(obs_key_t key)
{
 if (key >= OBS_KEY_LAST_VALUE) {
  blog(LOG_ERROR,
       "obs-hotkey.c: queried unknown key "
       "with code %d",
       (int)key);
  return "";
 }

 return obs_key_names[key];
}
