
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd_state {int lock; } ;


 int osd_destroy_backend (struct osd_state*) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (struct osd_state*) ;

void osd_free(struct osd_state *osd)
{
    if (!osd)
        return;
    osd_destroy_backend(osd);
    pthread_mutex_destroy(&osd->lock);
    talloc_free(osd);
}
