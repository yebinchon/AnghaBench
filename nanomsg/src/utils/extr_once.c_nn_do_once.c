
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int once; } ;
typedef TYPE_1__ nn_once_t ;


 int pthread_once (int *,void (*) ()) ;

void nn_do_once (nn_once_t *once, void (*func)(void))
{
    pthread_once (&once->once, func);
}
