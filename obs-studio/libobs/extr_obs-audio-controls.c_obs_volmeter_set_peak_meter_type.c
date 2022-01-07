
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int peak_meter_type; int mutex; } ;
typedef TYPE_1__ obs_volmeter_t ;
typedef enum obs_peak_meter_type { ____Placeholder_obs_peak_meter_type } obs_peak_meter_type ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_volmeter_set_peak_meter_type(obs_volmeter_t *volmeter,
          enum obs_peak_meter_type peak_meter_type)
{
 pthread_mutex_lock(&volmeter->mutex);
 volmeter->peak_meter_type = peak_meter_type;
 pthread_mutex_unlock(&volmeter->mutex);
}
