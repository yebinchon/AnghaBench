
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verbose; int num_threads; } ;
struct TYPE_3__ {int notify_send_fd; } ;


 int CRAWLER_WAIT ;
 int fprintf (int ,char*) ;
 scalar_t__ init_count ;
 int init_lock ;
 int logger_stop () ;
 int perror (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ settings ;
 int stderr ;
 int stop_assoc_maintenance_thread () ;
 int stop_conn_timeout_thread () ;
 int stop_item_crawler_thread (int ) ;
 int stop_lru_maintainer_thread () ;
 int stop_slab_maintenance_thread () ;
 TYPE_1__* threads ;
 int wait_for_thread_registration (int) ;
 int write (int ,char*,int) ;

void stop_threads(void) {
    char buf[1];
    int i;


    stop_assoc_maintenance_thread();
    if (settings.verbose > 0)
        fprintf(stderr, "stopped assoc\n");

    if (settings.verbose > 0)
        fprintf(stderr, "asking workers to stop\n");
    buf[0] = 's';
    pthread_mutex_lock(&init_lock);
    init_count = 0;
    for (i = 0; i < settings.num_threads; i++) {
        if (write(threads[i].notify_send_fd, buf, 1) != 1) {
            perror("Failed writing to notify pipe");

        }
    }
    wait_for_thread_registration(settings.num_threads);
    pthread_mutex_unlock(&init_lock);

    if (settings.verbose > 0)
        fprintf(stderr, "asking background threads to stop\n");



    stop_item_crawler_thread(CRAWLER_WAIT);
    if (settings.verbose > 0)
        fprintf(stderr, "stopped lru crawler\n");
    stop_lru_maintainer_thread();
    if (settings.verbose > 0)
        fprintf(stderr, "stopped maintainer\n");
    stop_slab_maintenance_thread();
    if (settings.verbose > 0)
        fprintf(stderr, "stopped slab mover\n");
    logger_stop();
    if (settings.verbose > 0)
        fprintf(stderr, "stopped logger thread\n");
    stop_conn_timeout_thread();
    if (settings.verbose > 0)
        fprintf(stderr, "stopped idle timeout thread\n");

    if (settings.verbose > 0)
        fprintf(stderr, "all background threads stopped\n");


}
