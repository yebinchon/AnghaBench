
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;


 int UNUSED_PARAMETER (int *) ;
 int glColorMask (int,int,int,int) ;

void device_enable_color(gs_device_t *device, bool red, bool green, bool blue,
    bool alpha)
{
 glColorMask(red, green, blue, alpha);

 UNUSED_PARAMETER(device);
}
