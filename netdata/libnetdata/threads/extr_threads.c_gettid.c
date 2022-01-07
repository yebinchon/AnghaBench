
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pid_t ;


 int SYS_gettid ;
 int pthread_getthreadid_np () ;
 int pthread_self ;
 int pthread_threadid_np (int *,int *) ;
 int syscall (int ) ;

pid_t gettid(void) {
    return (pid_t)syscall(SYS_gettid);


}
