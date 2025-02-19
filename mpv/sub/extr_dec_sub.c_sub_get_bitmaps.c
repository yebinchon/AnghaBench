
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sub_bitmaps {int dummy; } ;
struct mp_subtitle_opts {scalar_t__ sub_visibility; } ;
struct mp_osd_res {int dummy; } ;
struct dec_sub {double last_vo_pts; double end; TYPE_2__* sd; struct mp_subtitle_opts* opts; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* get_bitmaps ) (TYPE_2__*,struct mp_osd_res,int,double,struct sub_bitmaps*) ;} ;


 double MP_NOPTS_VALUE ;
 double pts_to_subtitle (struct dec_sub*,double) ;
 int stub1 (TYPE_2__*,struct mp_osd_res,int,double,struct sub_bitmaps*) ;
 int update_segment (struct dec_sub*) ;

void sub_get_bitmaps(struct dec_sub *sub, struct mp_osd_res dim, int format,
                     double pts, struct sub_bitmaps *res)
{
    struct mp_subtitle_opts *opts = sub->opts;

    pts = pts_to_subtitle(sub, pts);

    sub->last_vo_pts = pts;
    update_segment(sub);

    if (sub->end != MP_NOPTS_VALUE && pts >= sub->end)
        return;

    if (opts->sub_visibility && sub->sd->driver->get_bitmaps)
        sub->sd->driver->get_bitmaps(sub->sd, dim, format, pts, res);
}
