
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double int64_t ;
typedef int AVRational ;


 double AV_NOPTS_VALUE ;
 double MP_NOPTS_VALUE ;
 double av_q2d (int ) ;
 int get_def_tb (int *) ;

double mp_pts_from_av(int64_t av_pts, AVRational *tb)
{
    AVRational b = get_def_tb(tb);
    return av_pts == AV_NOPTS_VALUE ? MP_NOPTS_VALUE : av_pts * av_q2d(b);
}
