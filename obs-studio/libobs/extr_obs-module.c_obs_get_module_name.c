
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* (* name ) () ;} ;
typedef TYPE_1__ obs_module_t ;


 char const* stub1 () ;

const char *obs_get_module_name(obs_module_t *module)
{
 return (module && module->name) ? module->name() : ((void*)0);
}
