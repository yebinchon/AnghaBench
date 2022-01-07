
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int mutex; } ;
typedef TYPE_1__ nn_mutex_t ;
struct TYPE_6__ {int cv; } ;
typedef TYPE_2__ nn_condvar_t ;


 int ETIMEDOUT ;
 int errnum_assert (int,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_wait (int *,int *) ;

int nn_condvar_wait (nn_condvar_t *cond, nn_mutex_t *lock, int timeout)
{
    int rc;
    struct timeval tv;
    struct timespec ts;

    if (timeout < 0) {


        (void) pthread_cond_wait (&cond->cv, &lock->mutex);
        return (0);
    }

    rc = gettimeofday(&tv, ((void*)0));
    errnum_assert (rc == 0, rc);



    tv.tv_sec += timeout / 1000;
    tv.tv_usec += (timeout % 1000) * 1000;

    ts.tv_sec = tv.tv_sec + (tv.tv_usec / 1000000);
    ts.tv_nsec = (tv.tv_usec % 1000000) * 1000;

    rc = pthread_cond_timedwait (&cond->cv, &lock->mutex, &ts);
    if (rc == ETIMEDOUT)
        return (-ETIMEDOUT);

    return (0);
}
