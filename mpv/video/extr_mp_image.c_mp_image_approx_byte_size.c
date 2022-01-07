
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {struct AVBufferRef** bufs; } ;
struct AVBufferRef {scalar_t__ size; } ;


 int MP_MAX_PLANES ;

int mp_image_approx_byte_size(struct mp_image *img)
{
    int total = sizeof(*img);

    for (int n = 0; n < MP_MAX_PLANES; n++) {
        struct AVBufferRef *buf = img->bufs[n];
        if (buf)
            total += buf->size;
    }

    return total;
}
