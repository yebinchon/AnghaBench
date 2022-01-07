
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* data_path; } ;
typedef TYPE_1__ obs_module_t ;



const char *obs_get_module_data_path(obs_module_t *module)
{
 return module ? module->data_path : ((void*)0);
}
