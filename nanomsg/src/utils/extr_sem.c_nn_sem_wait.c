
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sem {int mutex; scalar_t__ signaled; int cond; } ;


 int EINTR ;
 int errnum_assert (int,int) ;
 scalar_t__ nn_fast (scalar_t__) ;
 scalar_t__ nn_slow (int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int nn_sem_wait (struct nn_sem *self)
{
    int rc;






    rc = pthread_mutex_lock (&self->mutex);
    errnum_assert (rc == 0, rc);
    if (nn_fast (self->signaled)) {
        rc = pthread_mutex_unlock (&self->mutex);
        errnum_assert (rc == 0, rc);
        return 0;
    }
    rc = pthread_cond_wait (&self->cond, &self->mutex);
    errnum_assert (rc == 0, rc);
    if (nn_slow (!self->signaled)) {
        rc = pthread_mutex_unlock (&self->mutex);
        errnum_assert (rc == 0, rc);
        return -EINTR;
    }
    self->signaled = 0;
    rc = pthread_mutex_unlock (&self->mutex);
    errnum_assert (rc == 0, rc);

    return 0;
}
