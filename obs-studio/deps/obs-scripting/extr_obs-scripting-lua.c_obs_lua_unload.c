
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (int ) ;
 int lua_source_def_mutex ;
 int lua_tick ;
 int obs_remove_tick_callback (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int startup_script ;
 int tick_mutex ;
 int timer_mutex ;

void obs_lua_unload(void)
{
 obs_remove_tick_callback(lua_tick, ((void*)0));

 bfree(startup_script);
 pthread_mutex_destroy(&tick_mutex);
 pthread_mutex_destroy(&timer_mutex);
 pthread_mutex_destroy(&lua_source_def_mutex);
}
