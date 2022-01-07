
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vo {TYPE_1__* in; struct vo* eq_opts_cache; struct vo* gl_opts_cache; struct vo* opts_cache; } ;
struct TYPE_2__ {int wakeup; int lock; } ;


 int forget_frames (struct vo*) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int talloc_free (struct vo*) ;

__attribute__((used)) static void dealloc_vo(struct vo *vo)
{
    forget_frames(vo);


    talloc_free(vo->opts_cache);
    talloc_free(vo->gl_opts_cache);
    talloc_free(vo->eq_opts_cache);

    pthread_mutex_destroy(&vo->in->lock);
    pthread_cond_destroy(&vo->in->wakeup);
    talloc_free(vo);
}
