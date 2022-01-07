
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int file; struct TYPE_3__* next; } ;
typedef TYPE_1__ obs_module_t ;
struct TYPE_4__ {TYPE_1__* first_module; } ;


 int LOG_INFO ;
 int blog (int ,char*,...) ;
 TYPE_2__* obs ;

void obs_log_loaded_modules(void)
{
 blog(LOG_INFO, "  Loaded Modules:");

 for (obs_module_t *mod = obs->first_module; !!mod; mod = mod->next)
  blog(LOG_INFO, "    %s", mod->file);
}
