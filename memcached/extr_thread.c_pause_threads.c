
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum pause_thread_types { ____Placeholder_pause_thread_types } pause_thread_types ;
struct TYPE_4__ {int num_threads; } ;
struct TYPE_3__ {int notify_send_fd; } ;






 int assert (int) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ init_count ;
 int init_lock ;
 int lru_crawler_pause () ;
 int lru_crawler_resume () ;
 int lru_maintainer_pause () ;
 int lru_maintainer_resume () ;
 int perror (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_2__ settings ;
 int slabs_rebalancer_pause () ;
 int slabs_rebalancer_resume () ;
 int stderr ;
 int storage_compact_pause () ;
 int storage_compact_resume () ;
 int storage_write_pause () ;
 int storage_write_resume () ;
 TYPE_1__* threads ;
 int wait_for_thread_registration (int) ;
 int worker_hang_lock ;
 int write (int ,char*,int) ;

void pause_threads(enum pause_thread_types type) {
    char buf[1];
    int i;

    buf[0] = 0;
    switch (type) {
        case 131:
            slabs_rebalancer_pause();
            lru_maintainer_pause();
            lru_crawler_pause();




        case 130:
            buf[0] = 'p';
            pthread_mutex_lock(&worker_hang_lock);
            break;
        case 129:
            slabs_rebalancer_resume();
            lru_maintainer_resume();
            lru_crawler_resume();




        case 128:
            pthread_mutex_unlock(&worker_hang_lock);
            break;
        default:
            fprintf(stderr, "Unknown lock type: %d\n", type);
            assert(1 == 0);
            break;
    }


    if (buf[0] == 0) {
        return;
    }

    pthread_mutex_lock(&init_lock);
    init_count = 0;
    for (i = 0; i < settings.num_threads; i++) {
        if (write(threads[i].notify_send_fd, buf, 1) != 1) {
            perror("Failed writing to notify pipe");

        }
    }
    wait_for_thread_registration(settings.num_threads);
    pthread_mutex_unlock(&init_lock);
}
