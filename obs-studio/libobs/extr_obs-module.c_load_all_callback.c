
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_module_info {int bin_path; int data_path; } ;
typedef int obs_module_t ;


 int LOG_DEBUG ;
 int MODULE_SUCCESS ;
 int UNUSED_PARAMETER (void*) ;
 int blog (int ,char*,int ,int) ;
 int obs_init_module (int *) ;
 int obs_open_module (int **,int ,int ) ;

__attribute__((used)) static void load_all_callback(void *param, const struct obs_module_info *info)
{
 obs_module_t *module;

 int code = obs_open_module(&module, info->bin_path, info->data_path);
 if (code != MODULE_SUCCESS) {
  blog(LOG_DEBUG, "Failed to load module file '%s': %d",
       info->bin_path, code);
  return;
 }

 obs_init_module(module);

 UNUSED_PARAMETER(param);
}
