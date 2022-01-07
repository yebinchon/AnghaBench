
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_data_t ;
struct TYPE_3__ {int * private_data; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 TYPE_2__* obs ;
 int obs_data_addref (int *) ;

obs_data_t *obs_get_private_data(void)
{
 if (!obs)
  return ((void*)0);

 obs_data_t *private_data = obs->data.private_data;
 obs_data_addref(private_data);
 return private_data;
}
