
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cv; } ;
typedef TYPE_1__ nn_condvar_t ;


 int pthread_cond_init (int *,int *) ;

int nn_condvar_init (nn_condvar_t *cond)
{
    int rc;




    rc = pthread_cond_init (&cond->cv, ((void*)0));
    return (-rc);
}
