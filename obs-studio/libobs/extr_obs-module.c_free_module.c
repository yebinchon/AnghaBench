
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obs_module {struct obs_module* data_path; struct obs_module* bin_path; struct obs_module* mod_name; int (* unload ) () ;scalar_t__ loaded; int (* free_locale ) () ;scalar_t__ module; } ;


 int bfree (struct obs_module*) ;
 int stub1 () ;
 int stub2 () ;

void free_module(struct obs_module *mod)
{
 if (!mod)
  return;

 if (mod->module) {
  if (mod->free_locale)
   mod->free_locale();

  if (mod->loaded && mod->unload)
   mod->unload();




 }

 bfree(mod->mod_name);
 bfree(mod->bin_path);
 bfree(mod->data_path);
 bfree(mod);
}
