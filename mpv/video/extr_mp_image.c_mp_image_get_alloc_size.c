
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_MAX_PLANES ;
 int mp_image_layout (int,int,int,int,int*,int*,int*) ;

int mp_image_get_alloc_size(int imgfmt, int w, int h, int stride_align)
{
    int stride[MP_MAX_PLANES];
    int plane_offset[MP_MAX_PLANES];
    int plane_size[MP_MAX_PLANES];
    return mp_image_layout(imgfmt, w, h, stride_align, stride, plane_offset,
                           plane_size);
}
