
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ info; } ;
typedef TYPE_2__ obs_source_t ;


 scalar_t__ OBS_SOURCE_TYPE_TRANSITION ;
 int obs_ptr_valid (TYPE_2__ const*,char const*) ;

__attribute__((used)) static inline bool transition_valid(const obs_source_t *transition,
        const char *func)
{
 if (!obs_ptr_valid(transition, func))
  return 0;
 else if (transition->info.type != OBS_SOURCE_TYPE_TRANSITION)
  return 0;

 return 1;
}
