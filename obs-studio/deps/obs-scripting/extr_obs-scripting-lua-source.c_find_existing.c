
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_lua_source {char const* id; struct obs_lua_source* next; } ;


 struct obs_lua_source* first_source_def ;
 int lua_source_def_mutex ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static inline struct obs_lua_source *find_existing(const char *id)
{
 struct obs_lua_source *existing = ((void*)0);

 pthread_mutex_lock(&lua_source_def_mutex);
 struct obs_lua_source *ls = first_source_def;
 while (ls) {

  if (ls->id == id) {
   existing = ls;
   break;
  }

  ls = ls->next;
 }
 pthread_mutex_unlock(&lua_source_def_mutex);

 return existing;
}
