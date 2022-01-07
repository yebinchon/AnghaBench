
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {int definition_mutex; int * script; } ;


 int bfree (struct obs_lua_source*) ;
 int lock_script () ;
 int pthread_mutex_destroy (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int source_type_unload (struct obs_lua_source*) ;
 int unlock_script () ;

__attribute__((used)) static void obs_lua_source_free_type_data(void *type_data)
{
 struct obs_lua_source *ls = type_data;

 pthread_mutex_lock(&ls->definition_mutex);

 if (ls->script) {
  lock_script();
  source_type_unload(ls);
  unlock_script();
  ls->script = ((void*)0);
 }

 pthread_mutex_unlock(&ls->definition_mutex);
 pthread_mutex_destroy(&ls->definition_mutex);
 bfree(ls);
}
