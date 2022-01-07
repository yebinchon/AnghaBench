
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugind {int thread; int id; int obsolete; scalar_t__ enabled; struct plugind* next; } ;
struct netdata_static_thread {int enabled; } ;


 int NETDATA_MAIN_THREAD_EXITED ;
 int NETDATA_MAIN_THREAD_EXITING ;
 int info (char*,...) ;
 int netdata_thread_cancel (int ) ;
 struct plugind* pluginsd_root ;

__attribute__((used)) static void pluginsd_main_cleanup(void *data) {
    struct netdata_static_thread *static_thread = (struct netdata_static_thread *)data;
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITING;
    info("cleaning up...");

    struct plugind *cd;
    for (cd = pluginsd_root; cd; cd = cd->next) {
        if (cd->enabled && !cd->obsolete) {
            info("stopping plugin thread: %s", cd->id);
            netdata_thread_cancel(cd->thread);
        }
    }

    info("cleanup completed.");
    static_thread->enabled = NETDATA_MAIN_THREAD_EXITED;
}
