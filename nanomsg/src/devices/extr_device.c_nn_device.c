
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nn_custom_device (int *,int,int,int ) ;
 int nn_ordinary_device ;

int nn_device (int s1, int s2)
{
    return nn_custom_device (&nn_ordinary_device, s1, s2, 0);
}
