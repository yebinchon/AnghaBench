
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * module_bin ;
 int * module_data ;
 int module_patterns_size ;
 int obs_add_module_path (int ,int ) ;

void add_default_module_paths(void)
{
 for (int i = 0; i < module_patterns_size; i++)
  obs_add_module_path(module_bin[i], module_data[i]);
}
