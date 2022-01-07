
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct obs_module {struct obs_module* next; int (* set_locale ) (char const*) ;} ;
struct TYPE_2__ {struct obs_module* first_module; scalar_t__ locale; } ;


 int bfree (scalar_t__) ;
 scalar_t__ bstrdup (char const*) ;
 TYPE_1__* obs ;
 int stub1 (char const*) ;

void obs_set_locale(const char *locale)
{
 struct obs_module *module;
 if (!obs)
  return;

 if (obs->locale)
  bfree(obs->locale);
 obs->locale = bstrdup(locale);

 module = obs->first_module;
 while (module) {
  if (module->set_locale)
   module->set_locale(locale);

  module = module->next;
 }
}
