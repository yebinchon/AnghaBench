
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingest {int url; int name; } ;


 int bfree (char*) ;
 int bstrdup (char*) ;
 int cur_ingests ;
 int da_push_back (int ,struct ingest*) ;
 int ingests_loaded ;
 int load_ingests (char*,int) ;
 int mutex ;
 char* obs_module_config_path (char*) ;
 int os_atomic_set_bool (int *,int) ;
 scalar_t__ os_file_exists (char*) ;
 char* os_quick_read_utf8_file (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void load_twitch_data(void)
{
 char *twitch_cache = obs_module_config_path("twitch_ingests.json");

 struct ingest def = {.name = bstrdup("Default"),
        .url = bstrdup("rtmp://live.twitch.tv/app")};

 pthread_mutex_lock(&mutex);
 da_push_back(cur_ingests, &def);
 pthread_mutex_unlock(&mutex);

 if (os_file_exists(twitch_cache)) {
  char *data = os_quick_read_utf8_file(twitch_cache);
  bool success;

  pthread_mutex_lock(&mutex);
  success = load_ingests(data, 0);
  pthread_mutex_unlock(&mutex);

  if (success) {
   os_atomic_set_bool(&ingests_loaded, 1);
  }

  bfree(data);
 }

 bfree(twitch_cache);
}
