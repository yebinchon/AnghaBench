
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {int definition_mutex; int * script; struct obs_lua_data* first_source; int id; } ;
struct obs_lua_script {int mutex; } ;
struct obs_lua_data {struct obs_lua_data* next; } ;


 int call_destroy (struct obs_lua_data*) ;
 int obs_enable_source_type (int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int source_type_unload (struct obs_lua_source*) ;

__attribute__((used)) static inline void undef_source_type(struct obs_lua_script *data,
         struct obs_lua_source *ls)
{
 pthread_mutex_lock(&ls->definition_mutex);
 pthread_mutex_lock(&data->mutex);

 obs_enable_source_type(ls->id, 0);

 struct obs_lua_data *ld = ls->first_source;
 while (ld) {
  call_destroy(ld);
  ld = ld->next;
 }

 source_type_unload(ls);
 ls->script = ((void*)0);

 pthread_mutex_unlock(&data->mutex);
 pthread_mutex_unlock(&ls->definition_mutex);
}
