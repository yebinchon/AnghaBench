
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_subtitle_opts {double sub_delay; } ;
struct dec_sub {double sub_speed; double play_dir; struct mp_subtitle_opts* opts; } ;


 double MP_NOPTS_VALUE ;

__attribute__((used)) static double pts_from_subtitle(struct dec_sub *sub, double pts)
{
    struct mp_subtitle_opts *opts = sub->opts;

    if (pts != MP_NOPTS_VALUE)
        pts = (pts * sub->sub_speed + opts->sub_delay) * sub->play_dir;

    return pts;
}
