
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ nn_mutex_t ;


 int errnum_assert (int,int) ;
 int pthread_mutex_unlock (int *) ;

void nn_mutex_unlock (nn_mutex_t *self)
{
    int rc;

    rc = pthread_mutex_unlock (&self->mutex);
    errnum_assert (rc == 0, rc);
}
