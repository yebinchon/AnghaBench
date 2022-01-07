
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int transition_use_fixed_duration; int transition_fixed_duration; } ;
typedef TYPE_1__ obs_source_t ;


 int transition_valid (TYPE_1__*,char*) ;

void obs_transition_enable_fixed(obs_source_t *transition, bool enable,
     uint32_t duration)
{
 if (!transition_valid(transition, "obs_transition_enable_fixed"))
  return;

 transition->transition_use_fixed_duration = enable;
 transition->transition_fixed_duration = duration;
}
