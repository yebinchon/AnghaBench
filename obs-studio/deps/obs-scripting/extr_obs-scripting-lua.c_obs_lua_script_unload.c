
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct obs_lua_script {int mutex; scalar_t__ first_callback; struct obs_lua_script* next_tick; struct obs_lua_script** p_prev_next_tick; int * script; } ;
struct TYPE_4__ {scalar_t__ next; } ;
struct lua_obs_callback {TYPE_1__ base; } ;
struct TYPE_5__ {int loaded; } ;
typedef TYPE_2__ obs_script_t ;
typedef int lua_State ;


 int lua_close (int *) ;
 int lua_getglobal (int *,char*) ;
 int lua_pcall (int *,int ,int ,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int remove_lua_obs_callback (struct lua_obs_callback*) ;
 int tick_mutex ;
 int undef_lua_script_sources (struct obs_lua_script*) ;

void obs_lua_script_unload(obs_script_t *s)
{
 struct obs_lua_script *data = (struct obs_lua_script *)s;

 if (!s->loaded)
  return;

 lua_State *script = data->script;




 undef_lua_script_sources(data);




 if (data->p_prev_next_tick) {
  pthread_mutex_lock(&tick_mutex);

  struct obs_lua_script *next = data->next_tick;
  if (next)
   next->p_prev_next_tick = data->p_prev_next_tick;
  *data->p_prev_next_tick = next;

  pthread_mutex_unlock(&tick_mutex);

  data->p_prev_next_tick = ((void*)0);
  data->next_tick = ((void*)0);
 }




 pthread_mutex_lock(&data->mutex);

 lua_getglobal(script, "script_unload");
 lua_pcall(script, 0, 0, 0);




 struct lua_obs_callback *cb =
  (struct lua_obs_callback *)data->first_callback;
 while (cb) {
  struct lua_obs_callback *next =
   (struct lua_obs_callback *)cb->base.next;
  remove_lua_obs_callback(cb);
  cb = next;
 }

 pthread_mutex_unlock(&data->mutex);




 lua_close(script);
 s->loaded = 0;
}
