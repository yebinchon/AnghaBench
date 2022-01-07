
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int transition_alignment; } ;
typedef TYPE_1__ obs_source_t ;


 int transition_valid (TYPE_1__*,char*) ;

void obs_transition_set_alignment(obs_source_t *transition, uint32_t alignment)
{
 if (!transition_valid(transition, "obs_transition_set_alignment"))
  return;

 transition->transition_alignment = alignment;
}
