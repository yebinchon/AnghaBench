
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_2__ {int iterations; int counter; int timeline; } ;


 int ASSERT (int,char*) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;
 int pthread_join (int ,int *) ;
 int sw_sync_timeline_create () ;
 int sw_sync_timeline_destroy (int) ;
 int sw_sync_timeline_is_valid (int) ;
 TYPE_1__ test_data_two_threads ;
 scalar_t__ test_stress_two_threads_shared_timeline_thread ;

int test_stress_two_threads_shared_timeline(void)
{
 pthread_t a, b;
 int valid;
 int timeline = sw_sync_timeline_create();

 valid = sw_sync_timeline_is_valid(timeline);
 ASSERT(valid, "Failure allocating timeline\n");

 test_data_two_threads.iterations = 1 << 16;
 test_data_two_threads.counter = 0;
 test_data_two_threads.timeline = timeline;






 pthread_create(&a, ((void*)0), (void *(*)(void *))
         test_stress_two_threads_shared_timeline_thread,
         (void *)0);
 pthread_create(&b, ((void*)0), (void *(*)(void *))
         test_stress_two_threads_shared_timeline_thread,
         (void *)1);

 pthread_join(a, ((void*)0));
 pthread_join(b, ((void*)0));


 ASSERT(test_data_two_threads.counter ==
        test_data_two_threads.iterations * 2,
        "Counter has unexpected value\n");

 sw_sync_timeline_destroy(timeline);

 return 0;
}
