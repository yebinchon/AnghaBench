
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int loaded; } ;
typedef TYPE_1__ obs_script_t ;


 scalar_t__ ptr_valid (TYPE_1__ const*) ;

bool obs_script_loaded(const obs_script_t *script)
{
 return ptr_valid(script) ? script->loaded : 0;
}
