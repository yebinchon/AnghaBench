
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* array; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;
typedef TYPE_2__ obs_script_t ;


 scalar_t__ ptr_valid (TYPE_2__ const*) ;

const char *obs_script_get_description(const obs_script_t *script)
{
 return ptr_valid(script) ? script->desc.array : ((void*)0);
}
