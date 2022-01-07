
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;


 int clear_textures (int *) ;

void device_begin_scene(gs_device_t *device)
{
 clear_textures(device);
}
