
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {size_t count; TYPE_1__* threads; } ;
struct lwan {TYPE_2__ thread; } ;
typedef int set ;
typedef int cpu_set_t ;
struct TYPE_3__ {int self; } ;


 int CPU_SET (size_t,int *) ;
 int CPU_ZERO (int *) ;
 int lwan_status_warning (char*,size_t) ;
 scalar_t__ pthread_setaffinity_np (int ,int,int *) ;

__attribute__((used)) static void
adjust_threads_affinity(struct lwan *l, uint32_t *schedtbl, uint32_t mask)
{
    for (uint32_t i = 0; i < l->thread.count; i++) {
        cpu_set_t set;

        CPU_ZERO(&set);
        CPU_SET(schedtbl[i & mask], &set);

        if (pthread_setaffinity_np(l->thread.threads[i].self, sizeof(set),
                                   &set))
            lwan_status_warning("Could not set affinity for thread %d", i);
    }
}
