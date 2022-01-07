
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_all_callback ;
 int obs_find_modules (int ,int *) ;
 int obs_load_all_modules_name ;
 int profile_end (int ) ;
 int profile_start (int ) ;
 int reset_win32_symbol_paths () ;
 int reset_win32_symbol_paths_name ;

void obs_load_all_modules(void)
{
 profile_start(obs_load_all_modules_name);
 obs_find_modules(load_all_callback, ((void*)0));





 profile_end(obs_load_all_modules_name);
}
