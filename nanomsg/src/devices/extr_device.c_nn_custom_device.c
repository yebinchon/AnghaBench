
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_device_recipe {int dummy; } ;


 int nn_device_entry (struct nn_device_recipe*,int,int,int) ;

int nn_custom_device(struct nn_device_recipe *device, int s1, int s2,
    int flags)
{
    return nn_device_entry (device, s1, s2, flags);
}
