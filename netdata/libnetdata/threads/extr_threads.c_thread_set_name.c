
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tag; } ;
typedef TYPE_1__ NETDATA_THREAD ;


 int error (char*,int ,char*,int) ;
 int gettid () ;
 int info (char*,int ,char*) ;
 int pthread_self () ;
 int pthread_set_name_np (int ,char*) ;
 int pthread_setname_np (char*,...) ;
 int strncpyz (char*,scalar_t__,int) ;

__attribute__((used)) static void thread_set_name(NETDATA_THREAD *nt) {

    if (nt->tag) {
        int ret = 0;


        char threadname[16];
        strncpyz(threadname, nt->tag, 15);






        ret = pthread_setname_np(pthread_self(), threadname);


        if (ret != 0)
            error("cannot set pthread name of %d to %s. ErrCode: %d", gettid(), threadname, ret);
        else
            info("set name of thread %d to %s", gettid(), threadname);

    }
}
