
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct meter_cb {void* member_1; int member_0; } ;
typedef int obs_volmeter_updated_t ;
struct TYPE_4__ {int callback_mutex; int callbacks; } ;
typedef TYPE_1__ obs_volmeter_t ;


 int da_erase_item (int ,struct meter_cb*) ;
 int obs_ptr_valid (TYPE_1__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void obs_volmeter_remove_callback(obs_volmeter_t *volmeter,
      obs_volmeter_updated_t callback, void *param)
{
 struct meter_cb cb = {callback, param};

 if (!obs_ptr_valid(volmeter, "obs_volmeter_remove_callback"))
  return;

 pthread_mutex_lock(&volmeter->callback_mutex);
 da_erase_item(volmeter->callbacks, &cb);
 pthread_mutex_unlock(&volmeter->callback_mutex);
}
