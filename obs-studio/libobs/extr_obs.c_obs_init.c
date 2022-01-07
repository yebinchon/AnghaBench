
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct obs_core {int dummy; } ;
typedef int profiler_name_store_t ;
struct TYPE_5__ {int gpu_encoder_mutex; } ;
struct TYPE_6__ {int monitoring_mutex; } ;
struct TYPE_7__ {int name_store_owned; void* locale; void* module_config_path; int * name_store; TYPE_1__ video; TYPE_2__ audio; } ;


 int LOG_ERROR ;
 int add_default_module_paths () ;
 int audio_line_info ;
 int blog (int ,char*) ;
 void* bstrdup (char const*) ;
 TYPE_3__* bzalloc (int) ;
 int group_info ;
 int log_system_info () ;
 TYPE_3__* obs ;
 int obs_init_data () ;
 int obs_init_handlers () ;
 int obs_init_hotkeys () ;
 int obs_register_source (int *) ;
 int * profiler_name_store_create () ;
 int pthread_mutex_init_value (int *) ;
 int scene_info ;

__attribute__((used)) static bool obs_init(const char *locale, const char *module_config_path,
       profiler_name_store_t *store)
{
 obs = bzalloc(sizeof(struct obs_core));

 pthread_mutex_init_value(&obs->audio.monitoring_mutex);
 pthread_mutex_init_value(&obs->video.gpu_encoder_mutex);

 obs->name_store_owned = !store;
 obs->name_store = store ? store : profiler_name_store_create();
 if (!obs->name_store) {
  blog(LOG_ERROR, "Couldn't create profiler name store");
  return 0;
 }

 log_system_info();

 if (!obs_init_data())
  return 0;
 if (!obs_init_handlers())
  return 0;
 if (!obs_init_hotkeys())
  return 0;

 if (module_config_path)
  obs->module_config_path = bstrdup(module_config_path);
 obs->locale = bstrdup(locale);
 obs_register_source(&scene_info);
 obs_register_source(&group_info);
 obs_register_source(&audio_line_info);
 add_default_module_paths();
 return 1;
}
