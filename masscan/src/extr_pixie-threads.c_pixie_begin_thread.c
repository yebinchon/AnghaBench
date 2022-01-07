
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef void* (* PTHREADFUNC ) (void*) ;


 int UNUSEDPARM (unsigned int) ;
 size_t _beginthread (void (*) (void*),int ,void*) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;

size_t
pixie_begin_thread(
    void (*worker_thread)(void*),
    unsigned flags,
    void *worker_data)
{




    typedef void *(*PTHREADFUNC)(void*);
    pthread_t thread_id = 0;
    pthread_create(
                          &thread_id,
                          ((void*)0),
                          (PTHREADFUNC)worker_thread,
                          worker_data);
    return (size_t)thread_id;

}
