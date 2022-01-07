
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cv; } ;
typedef TYPE_1__ nn_condvar_t ;


 int pthread_cond_broadcast (int *) ;

void nn_condvar_broadcast (nn_condvar_t *cond)
{


    (void) pthread_cond_broadcast (&cond->cv);
}
