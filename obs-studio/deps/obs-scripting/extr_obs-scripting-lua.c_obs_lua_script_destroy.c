
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int settings; int desc; int file; int path; } ;
struct obs_lua_script {int dir; int log_chunk; TYPE_1__ base; int mutex; } ;
typedef int obs_script_t ;


 int bfree (struct obs_lua_script*) ;
 int dstr_free (int *) ;
 int obs_data_release (int ) ;
 int pthread_mutex_destroy (int *) ;

void obs_lua_script_destroy(obs_script_t *s)
{
 struct obs_lua_script *data = (struct obs_lua_script *)s;

 if (data) {
  pthread_mutex_destroy(&data->mutex);
  dstr_free(&data->base.path);
  dstr_free(&data->base.file);
  dstr_free(&data->base.desc);
  obs_data_release(data->base.settings);
  dstr_free(&data->log_chunk);
  dstr_free(&data->dir);
  bfree(data);
 }
}
