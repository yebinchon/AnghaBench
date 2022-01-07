
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {double force_video_pts; int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

double osd_get_force_video_pts(struct osd_state *osd)
{
    pthread_mutex_lock(&osd->lock);
    double pts = osd->force_video_pts;
    pthread_mutex_unlock(&osd->lock);
    return pts;
}
