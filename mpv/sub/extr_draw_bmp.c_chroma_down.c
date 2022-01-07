
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_image {scalar_t__ w; scalar_t__ h; scalar_t__ imgfmt; scalar_t__* planes; int * stride; } ;


 scalar_t__ IMGFMT_420P ;
 scalar_t__ IMGFMT_444P ;
 int IMGFMT_Y8 ;
 int SWS_AREA ;
 int assert (int) ;
 int mp_image_set_size (struct mp_image*,int,int) ;
 int mp_image_setfmt (struct mp_image*,int ) ;
 int mp_image_swscale (struct mp_image*,struct mp_image*,int ) ;

__attribute__((used)) static void chroma_down(struct mp_image *old_src, struct mp_image *temp)
{
    assert(old_src->w == temp->w && old_src->h == temp->h);
    if (temp != old_src) {
        if (old_src->imgfmt == IMGFMT_420P) {

            assert(temp->imgfmt == IMGFMT_444P);
            assert(temp->planes[0] == old_src->planes[0]);
            struct mp_image t_dst = *temp;
            mp_image_setfmt(&t_dst, IMGFMT_Y8);
            mp_image_set_size(&t_dst, old_src->w >> 1, old_src->h >> 1);
            struct mp_image t_src = t_dst;
            mp_image_set_size(&t_src, temp->w, temp->h);
            for (int c = 0; c < 2; c++) {
                t_dst.planes[0] = old_src->planes[1 + c];
                t_dst.stride[0] = old_src->stride[1 + c];
                t_src.planes[0] = temp->planes[1 + c];
                t_src.stride[0] = temp->stride[1 + c];
                mp_image_swscale(&t_dst, &t_src, SWS_AREA);
            }
        } else {
            mp_image_swscale(old_src, temp, SWS_AREA);
        }
    }
}
