
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct obs_lua_source {int definition_mutex; int script; } ;
struct obs_lua_data {struct obs_lua_source* ls; } ;


 scalar_t__ call_func (int ,int,int) ;
 int get_height ;
 int have_func (int ) ;
 int lock_script () ;
 int ls_pop (int) ;
 int ls_push_data () ;
 scalar_t__ lua_tointeger (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int unlock_script () ;

__attribute__((used)) static uint32_t obs_lua_source_get_height(void *data)
{
 struct obs_lua_data *ld = data;
 struct obs_lua_source *ls = ld->ls;
 uint32_t height = 0;

 pthread_mutex_lock(&ls->definition_mutex);
 if (!ls->script)
  goto fail;
 if (!have_func(get_height))
  goto fail;

 lock_script();

 ls_push_data();
 if (call_func(get_height, 1, 1)) {
  height = (uint32_t)lua_tointeger(ls->script, -1);
  ls_pop(1);
 }

 unlock_script();

fail:
 pthread_mutex_unlock(&ls->definition_mutex);
 return height;
}
