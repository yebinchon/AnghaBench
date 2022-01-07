
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ obs_data_t ;


 int obs_data_destroy (TYPE_1__*) ;
 scalar_t__ os_atomic_dec_long (int *) ;

void obs_data_release(obs_data_t *data)
{
 if (!data)
  return;

 if (os_atomic_dec_long(&data->ref) == 0)
  obs_data_destroy(data);
}
