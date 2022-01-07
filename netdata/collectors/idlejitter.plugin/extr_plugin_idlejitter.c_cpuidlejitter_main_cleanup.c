
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdata_static_thread {int enabled; } ;


 int NETDATA_MAIN_THREAD_EXITED ;
 int NETDATA_MAIN_THREAD_EXITING ;
 int info (char*) ;

__attribute__((used)) static void cpuidlejitter_main_cleanup(void *ptr) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)ptr;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;

    info("cleaning up...");

    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
