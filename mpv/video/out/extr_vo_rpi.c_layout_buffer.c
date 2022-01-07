
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mp_image_params {scalar_t__ imgfmt; int h; int w; } ;
struct mp_image {int* stride; int ** planes; } ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ MMAL_BUFFER_HEADER_T ;


 int ALIGN_H ;
 int ALIGN_W ;
 scalar_t__ IMGFMT_420P ;
 int MP_ALIGN_UP (int ,int ) ;
 int assert (int) ;
 int mp_image_set_params (struct mp_image*,struct mp_image_params*) ;

__attribute__((used)) static size_t layout_buffer(struct mp_image *mpi, MMAL_BUFFER_HEADER_T *buffer,
                            struct mp_image_params *params)
{
    assert(params->imgfmt == IMGFMT_420P);
    mp_image_set_params(mpi, params);
    int w = MP_ALIGN_UP(params->w, ALIGN_W);
    int h = MP_ALIGN_UP(params->h, ALIGN_H);
    uint8_t *cur = buffer ? buffer->data : ((void*)0);
    size_t size = 0;
    for (int i = 0; i < 3; i++) {
        int div = i ? 2 : 1;
        mpi->planes[i] = cur;
        mpi->stride[i] = w / div;
        size_t plane_size = h / div * mpi->stride[i];
        if (cur)
            cur += plane_size;
        size += plane_size;
    }
    return size;
}
