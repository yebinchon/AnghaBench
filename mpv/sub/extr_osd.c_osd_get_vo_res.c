
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osd_state {int lock; TYPE_1__** objs; } ;
struct mp_osd_res {int dummy; } ;
struct TYPE_2__ {struct mp_osd_res vo_res; } ;


 size_t OSDTYPE_OSD ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

struct mp_osd_res osd_get_vo_res(struct osd_state *osd)
{
    pthread_mutex_lock(&osd->lock);

    struct mp_osd_res res = osd->objs[OSDTYPE_OSD]->vo_res;
    pthread_mutex_unlock(&osd->lock);
    return res;
}
