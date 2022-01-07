
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int handle; void* arg; int * routine; } ;
typedef int sigset_t ;
typedef int nn_thread_routine ;


 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int errno_assert (int) ;
 int errnum_assert (int,int) ;
 int nn_thread_main_routine ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigfillset (int *) ;

void nn_thread_init (struct nn_thread *self,
    nn_thread_routine *routine, void *arg)
{
    int rc;
    sigset_t new_sigmask;
    sigset_t old_sigmask;




    rc = sigfillset (&new_sigmask);
    errno_assert (rc == 0);
    rc = pthread_sigmask (SIG_BLOCK, &new_sigmask, &old_sigmask);
    errnum_assert (rc == 0, rc);

    self->routine = routine;
    self->arg = arg;
    rc = pthread_create (&self->handle, ((void*)0), nn_thread_main_routine,
        (void*) self);
    errnum_assert (rc == 0, rc);


    rc = pthread_sigmask (SIG_SETMASK, &old_sigmask, ((void*)0));
    errnum_assert (rc == 0, rc);
}
