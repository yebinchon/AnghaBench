
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ transition_start_time; scalar_t__ transition_duration; } ;
typedef TYPE_1__ obs_source_t ;



__attribute__((used)) static float calc_time(obs_source_t *transition, uint64_t ts)
{
 uint64_t end;

 if (ts <= transition->transition_start_time)
  return 0.0f;

 end = transition->transition_duration;
 ts -= transition->transition_start_time;
 if (ts >= end || end == 0)
  return 1.0f;

 return (float)((long double)ts / (long double)end);
}
