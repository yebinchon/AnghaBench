
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int dummy; } ;
struct mp_osd_res {int dummy; } ;
struct mp_image_pool {int dummy; } ;
struct mp_image {int dummy; } ;
struct draw_on_image_closure {struct mp_image_pool* member_2; struct mp_image* member_1; struct osd_state* member_0; } ;


 int draw_on_image ;
 int mp_draw_sub_formats ;
 int osd_draw (struct osd_state*,struct mp_osd_res,double,int,int ,int *,struct draw_on_image_closure*) ;

void osd_draw_on_image_p(struct osd_state *osd, struct mp_osd_res res,
                         double video_pts, int draw_flags,
                         struct mp_image_pool *pool, struct mp_image *dest)
{
    struct draw_on_image_closure closure = {osd, dest, pool};
    osd_draw(osd, res, video_pts, draw_flags, mp_draw_sub_formats,
             &draw_on_image, &closure);
}
