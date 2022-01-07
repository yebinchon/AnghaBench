
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int handle; } ;


 int errnum_assert (int,int) ;
 int pthread_join (int ,int *) ;

void nn_thread_term (struct nn_thread *self)
{
    int rc;

    rc = pthread_join (self->handle, ((void*)0));
    errnum_assert (rc == 0, rc);
}
