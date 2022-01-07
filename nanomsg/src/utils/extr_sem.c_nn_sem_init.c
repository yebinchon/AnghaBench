
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sem {scalar_t__ signaled; int cond; int mutex; } ;


 int errnum_assert (int,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;

void nn_sem_init (struct nn_sem *self)
{
    int rc;

    rc = pthread_mutex_init (&self->mutex, ((void*)0));
    errnum_assert (rc == 0, rc);
    rc = pthread_cond_init (&self->cond, ((void*)0));
    errnum_assert (rc == 0, rc);
    self->signaled = 0;
}
