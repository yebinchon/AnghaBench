
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {scalar_t__ script; struct obs_lua_source* next; } ;
struct obs_lua_script {scalar_t__ script; } ;


 struct obs_lua_source* first_source_def ;
 int lua_source_def_mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int undef_source_type (struct obs_lua_script*,struct obs_lua_source*) ;

void undef_lua_script_sources(struct obs_lua_script *data)
{
 pthread_mutex_lock(&lua_source_def_mutex);

 struct obs_lua_source *def = first_source_def;
 while (def) {
  if (def->script == data->script)
   undef_source_type(data, def);
  def = def->next;
 }

 pthread_mutex_unlock(&lua_source_def_mutex);
}
