
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_rect {int member_3; int member_2; int member_1; int member_0; } ;
struct mp_image {int h; int w; } ;


 int align_bbox (int,int,struct mp_rect*) ;
 int get_swscale_alignment (struct mp_image*,int*,int*) ;
 int mp_rect_intersection (struct mp_rect*,struct mp_rect*) ;

__attribute__((used)) static bool align_bbox_for_swscale(struct mp_image *img, struct mp_rect *rc)
{
    struct mp_rect img_rect = {0, 0, img->w, img->h};

    if (!mp_rect_intersection(rc, &img_rect))
        return 0;
    int xstep, ystep;
    get_swscale_alignment(img, &xstep, &ystep);
    align_bbox(xstep, ystep, rc);
    return mp_rect_intersection(rc, &img_rect);
}
