
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sem {int mutex; int cond; } ;


 int errnum_assert (int,int) ;
 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;

void nn_sem_term (struct nn_sem *self)
{
    int rc;

    rc = pthread_cond_destroy (&self->cond);
    errnum_assert (rc == 0, rc);
    rc = pthread_mutex_destroy (&self->mutex);
    errnum_assert (rc == 0, rc);
}
