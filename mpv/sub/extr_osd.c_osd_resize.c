
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int lock; int * objs; } ;
struct mp_osd_res {int dummy; } ;


 int OSDTYPE_EXTERNAL ;
 int OSDTYPE_EXTERNAL2 ;
 int OSDTYPE_OSD ;
 int check_obj_resize (struct osd_state*,struct mp_osd_res,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void osd_resize(struct osd_state *osd, struct mp_osd_res res)
{
    pthread_mutex_lock(&osd->lock);
    int types[] = {OSDTYPE_OSD, OSDTYPE_EXTERNAL, OSDTYPE_EXTERNAL2, -1};
    for (int n = 0; types[n] >= 0; n++)
        check_obj_resize(osd, res, osd->objs[types[n]]);
    pthread_mutex_unlock(&osd->lock);
}
