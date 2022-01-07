
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {int * bufs; scalar_t__* stride; int ** planes; } ;


 int MP_MAX_PLANES ;
 int av_buffer_unref (int *) ;

void mp_image_unref_data(struct mp_image *img)
{
    for (int n = 0; n < MP_MAX_PLANES; n++) {
        img->planes[n] = ((void*)0);
        img->stride[n] = 0;
        av_buffer_unref(&img->bufs[n]);
    }
}
