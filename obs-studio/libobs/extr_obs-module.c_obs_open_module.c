
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_module {char const* bin_path; char const* file; int (* set_locale ) (int ) ;int (* set_pointer ) (int *) ;int * next; void* data_path; int mod_name; int module; int member_0; } ;
typedef int obs_module_t ;
typedef int mod ;
struct TYPE_2__ {int locale; int * first_module; } ;


 int LOG_DEBUG ;
 int LOG_WARNING ;
 int MODULE_ERROR ;
 int MODULE_FILE_NOT_FOUND ;
 int MODULE_SUCCESS ;
 int * astrstri (char const*,char*) ;
 int blog (int ,char*,...) ;
 int * bmemdup (struct obs_module*,int) ;
 void* bstrdup (char const*) ;
 int get_module_name (char const*) ;
 int load_module_exports (struct obs_module*,char const*) ;
 TYPE_1__* obs ;
 int os_dlopen (char const*) ;
 char const* strrchr (char const*,char) ;
 int stub1 (int *) ;
 int stub2 (int ) ;

int obs_open_module(obs_module_t **module, const char *path,
      const char *data_path)
{
 struct obs_module mod = {0};
 int errorcode;

 if (!module || !path || !obs)
  return MODULE_ERROR;
 blog(LOG_DEBUG, "---------------------------------");

 mod.module = os_dlopen(path);
 if (!mod.module) {
  blog(LOG_WARNING, "Module '%s' not loaded", path);
  return MODULE_FILE_NOT_FOUND;
 }

 errorcode = load_module_exports(&mod, path);
 if (errorcode != MODULE_SUCCESS)
  return errorcode;

 mod.bin_path = bstrdup(path);
 mod.file = strrchr(mod.bin_path, '/');
 mod.file = (!mod.file) ? mod.bin_path : (mod.file + 1);
 mod.mod_name = get_module_name(mod.file);
 mod.data_path = bstrdup(data_path);
 mod.next = obs->first_module;

 if (mod.file) {
  blog(LOG_DEBUG, "Loading module: %s", mod.file);
 }

 *module = bmemdup(&mod, sizeof(mod));
 obs->first_module = (*module);
 mod.set_pointer(*module);

 if (mod.set_locale)
  mod.set_locale(obs->locale);

 return MODULE_SUCCESS;
}
