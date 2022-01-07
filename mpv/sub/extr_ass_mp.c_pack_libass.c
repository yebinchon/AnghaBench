
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sub_bitmaps {int num_parts; TYPE_1__* packed; struct sub_bitmap* parts; } ;
struct sub_bitmap {int src_y; int src_x; int stride; void* bitmap; int h; int w; } ;
struct mp_ass_packer {int dummy; } ;
struct TYPE_2__ {int* stride; scalar_t__* planes; } ;


 int IMGFMT_Y8 ;
 int memcpy_pic (void*,void*,int ,int ,int,int) ;
 int pack (struct mp_ass_packer*,struct sub_bitmaps*,int ) ;

__attribute__((used)) static bool pack_libass(struct mp_ass_packer *p, struct sub_bitmaps *res)
{
    if (!pack(p, res, IMGFMT_Y8))
        return 0;

    for (int n = 0; n < res->num_parts; n++) {
        struct sub_bitmap *b = &res->parts[n];

        int stride = res->packed->stride[0];
        void *pdata =
            (uint8_t *)res->packed->planes[0] + b->src_y * stride + b->src_x;
        memcpy_pic(pdata, b->bitmap, b->w, b->h, stride, b->stride);

        b->bitmap = pdata;
        b->stride = stride;
    }

    return 1;
}
