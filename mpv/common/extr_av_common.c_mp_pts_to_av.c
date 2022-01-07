
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVRational ;


 int AV_NOPTS_VALUE ;
 double MP_NOPTS_VALUE ;
 double av_q2d (int ) ;
 int get_def_tb (int *) ;
 int llrint (double) ;

int64_t mp_pts_to_av(double mp_pts, AVRational *tb)
{
    AVRational b = get_def_tb(tb);
    return mp_pts == MP_NOPTS_VALUE ? AV_NOPTS_VALUE : llrint(mp_pts / av_q2d(b));
}
