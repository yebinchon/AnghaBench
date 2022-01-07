
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* first_item; } ;
typedef TYPE_1__ obs_data_t ;
struct TYPE_6__ {int ref; } ;
typedef TYPE_2__ obs_data_item_t ;


 int os_atomic_inc_long (int *) ;

obs_data_item_t *obs_data_first(obs_data_t *data)
{
 if (!data)
  return ((void*)0);

 if (data->first_item)
  os_atomic_inc_long(&data->first_item->ref);
 return data->first_item;
}
