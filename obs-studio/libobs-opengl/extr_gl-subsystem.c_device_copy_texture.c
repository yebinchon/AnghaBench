
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_texture_t ;
typedef int gs_device_t ;


 int device_copy_texture_region (int *,int *,int ,int ,int *,int ,int ,int ,int ) ;

void device_copy_texture(gs_device_t *device, gs_texture_t *dst,
    gs_texture_t *src)
{
 device_copy_texture_region(device, dst, 0, 0, src, 0, 0, 0, 0);
}
