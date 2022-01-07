
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int render_subs_in_filter; int lock; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_set_render_subs_in_filter(struct osd_state *osd, bool s)
{
    pthread_mutex_lock(&osd->lock);
    osd->render_subs_in_filter = s;
    pthread_mutex_unlock(&osd->lock);
}
