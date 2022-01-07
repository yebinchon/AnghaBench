
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pthread_mutex_t ;
struct TYPE_6__ {int reserved_fds; } ;
struct TYPE_5__ {int notify_receive_fd; int notify_send_fd; void* storage; } ;
typedef int LIBEVENT_THREAD ;


 int POWER_LARGEST ;
 void* calloc (int,int) ;
 int * cqi_freelist ;
 int cqi_freelist_lock ;
 int create_worker (int ,TYPE_1__*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int hashpower ;
 int hashsize (int) ;
 int init_cond ;
 int init_lock ;
 int item_lock_count ;
 int item_lock_hashpower ;
 int * item_locks ;
 int * lru_locks ;
 int perror (char*) ;
 scalar_t__ pipe (int*) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int setup_thread (TYPE_1__*) ;
 TYPE_2__ stats_state ;
 int stderr ;
 TYPE_1__* threads ;
 int wait_for_thread_registration (int) ;
 int worker_hang_lock ;
 int worker_libevent ;

void memcached_thread_init(int nthreads, void *arg) {
    int i;
    int power;

    for (i = 0; i < POWER_LARGEST; i++) {
        pthread_mutex_init(&lru_locks[i], ((void*)0));
    }
    pthread_mutex_init(&worker_hang_lock, ((void*)0));

    pthread_mutex_init(&init_lock, ((void*)0));
    pthread_cond_init(&init_cond, ((void*)0));

    pthread_mutex_init(&cqi_freelist_lock, ((void*)0));
    cqi_freelist = ((void*)0);


    if (nthreads < 3) {
        power = 10;
    } else if (nthreads < 4) {
        power = 11;
    } else if (nthreads < 5) {
        power = 12;
    } else if (nthreads <= 10) {
        power = 13;
    } else if (nthreads <= 20) {
        power = 14;
    } else {

        power = 15;
    }

    if (power >= hashpower) {
        fprintf(stderr, "Hash table power size (%d) cannot be equal to or less than item lock table (%d)\n", hashpower, power);
        fprintf(stderr, "Item lock table grows with `-t N` (worker threadcount)\n");
        fprintf(stderr, "Hash table grows with `-o hashpower=N` \n");
        exit(1);
    }

    item_lock_count = hashsize(power);
    item_lock_hashpower = power;

    item_locks = calloc(item_lock_count, sizeof(pthread_mutex_t));
    if (! item_locks) {
        perror("Can't allocate item locks");
        exit(1);
    }
    for (i = 0; i < item_lock_count; i++) {
        pthread_mutex_init(&item_locks[i], ((void*)0));
    }

    threads = calloc(nthreads, sizeof(LIBEVENT_THREAD));
    if (! threads) {
        perror("Can't allocate thread descriptors");
        exit(1);
    }

    for (i = 0; i < nthreads; i++) {
        int fds[2];
        if (pipe(fds)) {
            perror("Can't create notify pipe");
            exit(1);
        }

        threads[i].notify_receive_fd = fds[0];
        threads[i].notify_send_fd = fds[1];



        setup_thread(&threads[i]);

        stats_state.reserved_fds += 5;
    }


    for (i = 0; i < nthreads; i++) {
        create_worker(worker_libevent, &threads[i]);
    }


    pthread_mutex_lock(&init_lock);
    wait_for_thread_registration(nthreads);
    pthread_mutex_unlock(&init_lock);
}
