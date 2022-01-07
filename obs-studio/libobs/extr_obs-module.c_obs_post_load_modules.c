
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* post_load ) () ;struct TYPE_3__* next; } ;
typedef TYPE_1__ obs_module_t ;
struct TYPE_4__ {TYPE_1__* first_module; } ;


 TYPE_2__* obs ;
 int stub1 () ;

void obs_post_load_modules(void)
{
 for (obs_module_t *mod = obs->first_module; !!mod; mod = mod->next)
  if (mod->post_load)
   mod->post_load();
}
