
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float balance; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ obs_source_valid (TYPE_1__ const*,char*) ;

float obs_source_get_balance_value(const obs_source_t *source)
{
 return obs_source_valid(source, "obs_source_get_balance_value")
         ? source->balance
         : 0.5f;
}
