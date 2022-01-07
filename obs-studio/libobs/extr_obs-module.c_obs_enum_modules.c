
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_module {struct obs_module* next; } ;
typedef int (* obs_enum_module_callback_t ) (void*,struct obs_module*) ;
struct TYPE_2__ {struct obs_module* first_module; } ;


 TYPE_1__* obs ;

void obs_enum_modules(obs_enum_module_callback_t callback, void *param)
{
 struct obs_module *module;
 if (!obs)
  return;

 module = obs->first_module;
 while (module) {
  callback(param, module);
  module = module->next;
 }
}
