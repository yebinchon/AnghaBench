
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {int definition_mutex; int script; } ;
struct obs_lua_data {struct obs_lua_data** p_prev_next; struct obs_lua_data* next; struct obs_lua_source* ls; } ;


 int bfree (void*) ;
 int call_destroy (struct obs_lua_data*) ;
 int destroy ;
 int have_func (int ) ;
 int lock_script () ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int unlock_script () ;

__attribute__((used)) static void obs_lua_source_destroy(void *data)
{
 struct obs_lua_data *ld = data;
 struct obs_lua_source *ls = ld->ls;
 struct obs_lua_data *next;

 pthread_mutex_lock(&ls->definition_mutex);
 if (!ls->script)
  goto fail;
 if (!have_func(destroy))
  goto fail;

 lock_script();
 call_destroy(ld);
 unlock_script();

fail:
 next = ld->next;
 *ld->p_prev_next = next;
 if (next)
  next->p_prev_next = ld->p_prev_next;

 bfree(data);
 pthread_mutex_unlock(&ls->definition_mutex);
}
