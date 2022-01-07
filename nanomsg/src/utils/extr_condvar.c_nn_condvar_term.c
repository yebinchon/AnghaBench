
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cv; } ;
typedef TYPE_1__ nn_condvar_t ;


 int errnum_assert (int,int) ;
 int pthread_cond_destroy (int *) ;

void nn_condvar_term (nn_condvar_t *cond)
{
    int rc;





    rc = pthread_cond_destroy (&cond->cv);
    errnum_assert (rc == 0, rc);
}
