
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mp_image_approx_byte_size (void*) ;

__attribute__((used)) static int video_approx_size(void *data)
{
    return mp_image_approx_byte_size(data);
}
