
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int options; int arg; void* (* start_routine ) (int ) ;} ;
typedef TYPE_1__ NETDATA_THREAD ;


 int NETDATA_THREAD_OPTION_DONT_LOG_STARTUP ;
 int PTHREAD_CANCEL_DEFERRED ;
 int PTHREAD_CANCEL_ENABLE ;
 int error (char*) ;
 int gettid () ;
 int info (char*,int ) ;
 TYPE_1__* netdata_thread ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 scalar_t__ pthread_setcancelstate (int ,int *) ;
 scalar_t__ pthread_setcanceltype (int ,int *) ;
 void* stub1 (int ) ;
 int thread_cleanup ;
 int thread_set_name (void*) ;

__attribute__((used)) static void *thread_start(void *ptr) {
    netdata_thread = (NETDATA_THREAD *)ptr;

    if(!(netdata_thread->options & NETDATA_THREAD_OPTION_DONT_LOG_STARTUP))
        info("thread created with task id %d", gettid());

    if(pthread_setcanceltype(PTHREAD_CANCEL_DEFERRED, ((void*)0)) != 0)
        error("cannot set pthread cancel type to DEFERRED.");

    if(pthread_setcancelstate(PTHREAD_CANCEL_ENABLE, ((void*)0)) != 0)
        error("cannot set pthread cancel state to ENABLE.");

    thread_set_name(ptr);

    void *ret = ((void*)0);
    pthread_cleanup_push(thread_cleanup, ptr);
            ret = netdata_thread->start_routine(netdata_thread->arg);
    pthread_cleanup_pop(1);

    return ret;
}
