
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct TYPE_2__ {scalar_t__ enabled; int * name; int * thread; } ;


 scalar_t__ NETDATA_MAIN_THREAD_EXITED ;
 scalar_t__ NETDATA_MAIN_THREAD_RUNNING ;
 int USEC_PER_SEC ;
 int error (char*,int *) ;
 int error_log_limit_unlimited () ;
 int info (char*,...) ;
 int netdata_exit ;
 int netdata_thread_cancel (int ) ;
 int sleep_usec (scalar_t__) ;
 TYPE_1__* static_threads ;

void cancel_main_threads() {
    error_log_limit_unlimited();

    int i, found = 0;
    usec_t max = 5 * USEC_PER_SEC, step = 100000;
    for (i = 0; static_threads[i].name != ((void*)0) ; i++) {
        if(static_threads[i].enabled == NETDATA_MAIN_THREAD_RUNNING) {
            info("EXIT: Stopping master thread: %s", static_threads[i].name);
            netdata_thread_cancel(*static_threads[i].thread);
            found++;
        }
    }

    netdata_exit = 1;

    while(found && max > 0) {
        max -= step;
        info("Waiting %d threads to finish...", found);
        sleep_usec(step);
        found = 0;
        for (i = 0; static_threads[i].name != ((void*)0) ; i++) {
            if (static_threads[i].enabled != NETDATA_MAIN_THREAD_EXITED)
                found++;
        }
    }

    if(found) {
        for (i = 0; static_threads[i].name != ((void*)0) ; i++) {
            if (static_threads[i].enabled != NETDATA_MAIN_THREAD_EXITED)
                error("Master thread %s takes too long to exit. Giving up...", static_threads[i].name);
        }
    }
    else
        info("All threads finished.");
}
