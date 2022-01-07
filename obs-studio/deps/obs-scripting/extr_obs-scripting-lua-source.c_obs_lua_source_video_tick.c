
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {int definition_mutex; int script; } ;
struct obs_lua_data {struct obs_lua_source* ls; } ;


 int call_func (int ,int,int ) ;
 int have_func (int ) ;
 int lock_script () ;
 int ls_push_data () ;
 int lua_pushnumber (int ,double) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int unlock_script () ;
 int video_tick ;

__attribute__((used)) static void obs_lua_source_video_tick(void *data, float seconds)
{
 struct obs_lua_data *ld = data;
 struct obs_lua_source *ls = ld->ls;

 pthread_mutex_lock(&ls->definition_mutex);
 if (!ls->script)
  goto fail;
 if (!have_func(video_tick))
  goto fail;

 lock_script();

 ls_push_data();
 lua_pushnumber(ls->script, (double)seconds);
 call_func(video_tick, 2, 0);

 unlock_script();

fail:
 pthread_mutex_unlock(&ls->definition_mutex);
}
