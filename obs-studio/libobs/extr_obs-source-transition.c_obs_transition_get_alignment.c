
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int transition_alignment; } ;
typedef TYPE_1__ obs_source_t ;


 scalar_t__ transition_valid (TYPE_1__ const*,char*) ;

uint32_t obs_transition_get_alignment(const obs_source_t *transition)
{
 return transition_valid(transition, "obs_transition_get_alignment")
         ? transition->transition_alignment
         : 0;
}
