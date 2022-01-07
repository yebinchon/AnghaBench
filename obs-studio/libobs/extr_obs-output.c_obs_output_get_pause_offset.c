
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int mutex; int ts_offset; } ;
struct TYPE_6__ {TYPE_1__ pause; } ;
typedef TYPE_2__ obs_output_t ;


 int obs_output_valid (TYPE_2__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

uint64_t obs_output_get_pause_offset(obs_output_t *output)
{
 uint64_t offset;

 if (!obs_output_valid(output, "obs_output_get_pause_offset"))
  return 0;

 pthread_mutex_lock(&output->pause.mutex);
 offset = output->pause.ts_offset;
 pthread_mutex_unlock(&output->pause.mutex);

 return offset;
}
