
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ transition_cy; scalar_t__ transition_cx; } ;
typedef TYPE_1__ obs_source_t ;


 int transition_valid (TYPE_1__ const*,char*) ;

void obs_transition_get_size(const obs_source_t *transition, uint32_t *cx,
        uint32_t *cy)
{
 if (!transition_valid(transition, "obs_transition_set_size")) {
  *cx = 0;
  *cy = 0;
  return;
 }

 *cx = transition->transition_cx;
 *cy = transition->transition_cy;
}
