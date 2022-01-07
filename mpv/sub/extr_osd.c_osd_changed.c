
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_state {int want_redraw_notification; int lock; int opts_cache; TYPE_1__** objs; } ;
struct TYPE_2__ {int osd_changed; } ;


 size_t OSDTYPE_OSD ;
 int m_config_cache_update (int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_changed(struct osd_state *osd)
{
    pthread_mutex_lock(&osd->lock);
    osd->objs[OSDTYPE_OSD]->osd_changed = 1;
    osd->want_redraw_notification = 1;

    m_config_cache_update(osd->opts_cache);
    pthread_mutex_unlock(&osd->lock);
}
