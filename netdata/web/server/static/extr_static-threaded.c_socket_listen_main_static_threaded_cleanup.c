
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ usec_t ;
struct netdata_static_thread {int enabled; } ;
struct TYPE_2__ {scalar_t__ running; int thread; } ;


 int NETDATA_MAIN_THREAD_EXITED ;
 int NETDATA_MAIN_THREAD_EXITING ;
 int USEC_PER_SEC ;
 int api_sockets ;
 int error (char*,int) ;
 int info (char*,...) ;
 int listen_sockets_close (int *) ;
 int netdata_thread_cancel (int ) ;
 int sleep_usec (scalar_t__) ;
 int static_threaded_workers_count ;
 TYPE_1__* static_workers_private_data ;

__attribute__((used)) static void socket_listen_main_static_threaded_cleanup(void *ptr) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)ptr;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;

    int i, found = 0;
    usec_t max = 2 * USEC_PER_SEC, step = 50000;


    for(i = 1; i < static_threaded_workers_count; i++) {
        if(static_workers_private_data[i].running) {
            found++;
            info("stopping worker %d", i + 1);
            netdata_thread_cancel(static_workers_private_data[i].thread);
        }
        else
            info("found stopped worker %d", i + 1);
    }

    while(found && max > 0) {
        max -= step;
        info("Waiting %d static web threads to finish...", found);
        sleep_usec(step);
        found = 0;


        for(i = 1; i < static_threaded_workers_count; i++) {
            if (static_workers_private_data[i].running)
                found++;
        }
    }

    if(found)
        error("%d static web threads are taking too long to finish. Giving up.", found);

    info("closing all web server sockets...");
    listen_sockets_close(&api_sockets);

    info("all static web threads stopped.");
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
