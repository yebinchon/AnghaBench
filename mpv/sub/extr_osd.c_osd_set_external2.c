
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sub_bitmaps {int dummy; } ;
struct osd_state {int want_redraw_notification; int lock; TYPE_1__** objs; } ;
struct TYPE_2__ {int vo_change_id; struct sub_bitmaps* external2; } ;


 size_t OSDTYPE_EXTERNAL2 ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_set_external2(struct osd_state *osd, struct sub_bitmaps *imgs)
{
    pthread_mutex_lock(&osd->lock);
    osd->objs[OSDTYPE_EXTERNAL2]->external2 = imgs;
    osd->objs[OSDTYPE_EXTERNAL2]->vo_change_id += 1;
    osd->want_redraw_notification = 1;
    pthread_mutex_unlock(&osd->lock);
}
