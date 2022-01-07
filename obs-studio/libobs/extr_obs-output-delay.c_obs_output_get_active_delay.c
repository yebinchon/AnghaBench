
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {unsigned long long active_delay_ns; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ obs_output_valid (TYPE_1__ const*,char*) ;

uint32_t obs_output_get_active_delay(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_set_delay")
         ? (uint32_t)(output->active_delay_ns / 1000000000ULL)
         : 0;
}
