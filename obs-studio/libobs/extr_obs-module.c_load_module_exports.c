
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_module {int module; void* author; void* description; void* name; void* free_locale; void* set_locale; void* post_load; void* unload; void* ver; void* set_pointer; void* load; } ;


 int MODULE_SUCCESS ;
 void* os_dlsym (int ,char*) ;
 int req_func_not_found (char*,char const*) ;

__attribute__((used)) static int load_module_exports(struct obs_module *mod, const char *path)
{
 mod->load = os_dlsym(mod->module, "obs_module_load");
 if (!mod->load)
  return req_func_not_found("obs_module_load", path);

 mod->set_pointer = os_dlsym(mod->module, "obs_module_set_pointer");
 if (!mod->set_pointer)
  return req_func_not_found("obs_module_set_pointer", path);

 mod->ver = os_dlsym(mod->module, "obs_module_ver");
 if (!mod->ver)
  return req_func_not_found("obs_module_ver", path);


 mod->unload = os_dlsym(mod->module, "obs_module_unload");
 mod->post_load = os_dlsym(mod->module, "obs_module_post_load");
 mod->set_locale = os_dlsym(mod->module, "obs_module_set_locale");
 mod->free_locale = os_dlsym(mod->module, "obs_module_free_locale");
 mod->name = os_dlsym(mod->module, "obs_module_name");
 mod->description = os_dlsym(mod->module, "obs_module_description");
 mod->author = os_dlsym(mod->module, "obs_module_author");
 return MODULE_SUCCESS;
}
