
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dec_sub {double last_vo_pts; int lock; TYPE_2__* sd; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {char* (* get_text ) (TYPE_2__*,double) ;} ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 double pts_to_subtitle (struct dec_sub*,double) ;
 char* stub1 (TYPE_2__*,double) ;
 int update_segment (struct dec_sub*) ;

char *sub_get_text(struct dec_sub *sub, double pts)
{
    pthread_mutex_lock(&sub->lock);
    char *text = ((void*)0);

    pts = pts_to_subtitle(sub, pts);

    sub->last_vo_pts = pts;
    update_segment(sub);

    if (sub->sd->driver->get_text)
        text = sub->sd->driver->get_text(sub->sd, pts);
    pthread_mutex_unlock(&sub->lock);
    return text;
}
