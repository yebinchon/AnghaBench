
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct lwan_thread {int dummy; } ;
struct lwan_connection {int dummy; } ;
struct TYPE_4__ {short count; unsigned int max_fd; int barrier; int * threads; } ;
struct lwan {TYPE_2__ thread; TYPE_1__* conns; } ;
struct TYPE_3__ {int * thread; } ;


 int adjust_threads_affinity (struct lwan*,int*,int) ;
 int* alloca (int) ;
 int * calloc (size_t,int) ;
 int create_thread (struct lwan*,int *) ;
 int lwan_nextpow2 (size_t) ;
 int lwan_status_critical (char*) ;
 int lwan_status_debug (char*) ;
 scalar_t__ pthread_barrier_init (int *,int *,unsigned int) ;
 int pthread_barrier_wait (int *) ;
 int static_assert (int,char*) ;
 int topology_to_schedtbl (struct lwan*,int*,int) ;

void lwan_thread_init(struct lwan *l)
{
    if (pthread_barrier_init(&l->thread.barrier, ((void*)0),
                             (unsigned)l->thread.count + 1))
        lwan_status_critical("Could not create barrier");

    lwan_status_debug("Initializing threads");

    l->thread.threads =
        calloc((size_t)l->thread.count, sizeof(struct lwan_thread));
    if (!l->thread.threads)
        lwan_status_critical("Could not allocate memory for threads");

    for (short i = 0; i < l->thread.count; i++)
        create_thread(l, &l->thread.threads[i]);

    const unsigned int total_conns = l->thread.max_fd * l->thread.count;

    static_assert(sizeof(struct lwan_connection) == 32,
                  "Two connections per cache line");
    uint32_t n_threads = (uint32_t)lwan_nextpow2((size_t)((l->thread.count - 1) * 2));
    uint32_t *schedtbl = alloca(n_threads * sizeof(uint32_t));

    topology_to_schedtbl(l, schedtbl, n_threads);

    n_threads--;
    adjust_threads_affinity(l, schedtbl, n_threads);
    for (unsigned int i = 0; i < total_conns; i++)
        l->conns[i].thread = &l->thread.threads[schedtbl[i & n_threads]];





    pthread_barrier_wait(&l->thread.barrier);

    lwan_status_debug("Worker threads created and ready to serve");
}
