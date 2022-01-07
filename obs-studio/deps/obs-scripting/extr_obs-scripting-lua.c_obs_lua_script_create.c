
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int settings; int file; int path; int type; } ;
struct obs_lua_script {TYPE_1__ base; int dir; int mutex; int tick; } ;
typedef int pthread_mutexattr_t ;
typedef int obs_script_t ;
typedef int obs_data_t ;


 int LUA_REFNIL ;
 int OBS_SCRIPT_LANG_LUA ;
 int PTHREAD_MUTEX_RECURSIVE ;
 int bfree (struct obs_lua_script*) ;
 struct obs_lua_script* bzalloc (int) ;
 int dstr_copy (int *,char const*) ;
 int dstr_left (int *,int *,int) ;
 int obs_data_apply (int ,int *) ;
 int obs_data_create () ;
 int obs_lua_script_load (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutex_init_value (int *) ;
 int pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 char* strrchr (char const*,char) ;

obs_script_t *obs_lua_script_create(const char *path, obs_data_t *settings)
{
 struct obs_lua_script *data = bzalloc(sizeof(*data));

 data->base.type = OBS_SCRIPT_LANG_LUA;
 data->tick = LUA_REFNIL;

 pthread_mutexattr_t attr;
 pthread_mutexattr_init(&attr);
 pthread_mutex_init_value(&data->mutex);
 pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE);

 if (pthread_mutex_init(&data->mutex, &attr) != 0) {
  bfree(data);
  return ((void*)0);
 }

 dstr_copy(&data->base.path, path);

 char *slash = path && *path ? strrchr(path, '/') : ((void*)0);
 if (slash) {
  slash++;
  dstr_copy(&data->base.file, slash);
  dstr_left(&data->dir, &data->base.path, slash - path);
 } else {
  dstr_copy(&data->base.file, path);
 }

 data->base.settings = obs_data_create();
 if (settings)
  obs_data_apply(data->base.settings, settings);

 obs_lua_script_load((obs_script_t *)data);
 return (obs_script_t *)data;
}
