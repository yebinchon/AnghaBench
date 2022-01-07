
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int want_redraw_notification; int lock; struct osd_object** objs; } ;
struct osd_object {int vo_change_id; struct dec_sub* sub; } ;
struct dec_sub {int dummy; } ;


 int OSDTYPE_SUB ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_set_sub(struct osd_state *osd, int index, struct dec_sub *dec_sub)
{
    pthread_mutex_lock(&osd->lock);
    if (index >= 0 && index < 2) {
        struct osd_object *obj = osd->objs[OSDTYPE_SUB + index];
        obj->sub = dec_sub;
        obj->vo_change_id += 1;
    }
    osd->want_redraw_notification = 1;
    pthread_mutex_unlock(&osd->lock);
}
