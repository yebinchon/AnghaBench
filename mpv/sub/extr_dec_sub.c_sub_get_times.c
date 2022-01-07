
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd_times {int end; int start; } ;
struct dec_sub {double last_vo_pts; int lock; TYPE_2__* sd; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {struct sd_times (* get_times ) (TYPE_2__*,double) ;} ;


 int MP_NOPTS_VALUE ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 double pts_to_subtitle (struct dec_sub*,double) ;
 struct sd_times stub1 (TYPE_2__*,double) ;
 int update_segment (struct dec_sub*) ;

struct sd_times sub_get_times(struct dec_sub *sub, double pts)
{
    pthread_mutex_lock(&sub->lock);
    struct sd_times res = { .start = MP_NOPTS_VALUE, .end = MP_NOPTS_VALUE };

    pts = pts_to_subtitle(sub, pts);

    sub->last_vo_pts = pts;
    update_segment(sub);

    if (sub->sd->driver->get_times)
        res = sub->sd->driver->get_times(sub->sd, pts);

    pthread_mutex_unlock(&sub->lock);
    return res;
}
