
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int mutex; int ts_start; } ;
struct TYPE_7__ {TYPE_2__ pause; } ;
typedef TYPE_1__ obs_output_t ;


 int end_pause (TYPE_2__*,int ) ;
 int get_closest_v_ts (TYPE_2__*) ;
 int pause_can_start (TYPE_2__*) ;
 int pause_can_stop (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static bool obs_raw_output_pause(obs_output_t *output, bool pause)
{
 bool success;
 uint64_t closest_v_ts;

 pthread_mutex_lock(&output->pause.mutex);
 closest_v_ts = get_closest_v_ts(&output->pause);
 if (pause) {
  success = pause_can_start(&output->pause);
  if (success)
   output->pause.ts_start = closest_v_ts;
 } else {
  success = pause_can_stop(&output->pause);
  if (success)
   end_pause(&output->pause, closest_v_ts);
 }
 pthread_mutex_unlock(&output->pause.mutex);

 return success;
}
