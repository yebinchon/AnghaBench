
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_attr_t ;
struct TYPE_2__ {int thread_id; } ;
typedef TYPE_1__ LIBEVENT_THREAD ;


 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int pthread_attr_init (int *) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void create_worker(void *(*func)(void *), void *arg) {
    pthread_attr_t attr;
    int ret;

    pthread_attr_init(&attr);

    if ((ret = pthread_create(&((LIBEVENT_THREAD*)arg)->thread_id, &attr, func, arg)) != 0) {
        fprintf(stderr, "Can't create thread: %s\n",
                strerror(ret));
        exit(1);
    }
}
