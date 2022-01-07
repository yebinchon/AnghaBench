
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netdata_static_thread {int enabled; } ;
struct TYPE_4__ {int threads; int sockets; TYPE_1__* collection_threads_status; } ;
struct TYPE_3__ {int thread; scalar_t__ status; } ;


 int NETDATA_MAIN_THREAD_EXITED ;
 int NETDATA_MAIN_THREAD_EXITING ;
 int info (char*,...) ;
 int listen_sockets_close (int *) ;
 int netdata_thread_cancel (int ) ;
 TYPE_2__ statsd ;

__attribute__((used)) static void statsd_main_cleanup(void *data) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)data;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;
    info("cleaning up...");

    if (statsd.collection_threads_status) {
        int i;
        for (i = 0; i < statsd.threads; i++) {
            if(statsd.collection_threads_status[i].status) {
                info("STATSD: stopping data collection thread %d...", i + 1);
                netdata_thread_cancel(statsd.collection_threads_status[i].thread);
            }
            else {
                info("STATSD: data collection thread %d found stopped.", i + 1);
            }
        }
    }

    info("STATSD: closing sockets...");
    listen_sockets_close(&statsd.sockets);

    info("STATSD: cleanup completed.");
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
