
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obs_add_main_render_callback (int ,void*) ;
 int obs_lua_main_render_callback ;

__attribute__((used)) static void defer_add_render(void *cb)
{
 obs_add_main_render_callback(obs_lua_main_render_callback, cb);
}
