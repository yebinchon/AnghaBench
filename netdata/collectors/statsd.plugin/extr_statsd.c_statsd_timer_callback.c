
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct collection_thread_status {int rusage; } ;


 int RUSAGE_THREAD ;
 int getrusage (int ,int *) ;

__attribute__((used)) static void statsd_timer_callback(void *timer_data) {
    struct collection_thread_status *status = timer_data;
    getrusage(RUSAGE_THREAD, &status->rusage);
}
