
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* producer_timelines; int consumer_timeline; int iterations; int threads; int counter; } ;


 int ASSERT (int,char*) ;
 scalar_t__ busy_wait_on_fence (int) ;
 int sw_sync_fence_create (int,char*,int) ;
 int sw_sync_fence_destroy (int) ;
 int sw_sync_fence_is_valid (int) ;
 scalar_t__ sw_sync_timeline_inc (int,int) ;
 int sync_merge (char*,int,int) ;
 scalar_t__ sync_wait (int,int) ;
 TYPE_1__ test_data_mpsc ;

__attribute__((used)) static int mpcs_consumer_thread(void)
{
 int fence, merged, tmp, valid, it, i;
 int *producer_timelines = test_data_mpsc.producer_timelines;
 int consumer_timeline = test_data_mpsc.consumer_timeline;
 int iterations = test_data_mpsc.iterations;
 int n = test_data_mpsc.threads;

 for (it = 1; it <= iterations; it++) {
  fence = sw_sync_fence_create(producer_timelines[0], "name", it);
  for (i = 1; i < n; i++) {
   tmp = sw_sync_fence_create(producer_timelines[i],
         "name", it);
   merged = sync_merge("name", tmp, fence);
   sw_sync_fence_destroy(tmp);
   sw_sync_fence_destroy(fence);
   fence = merged;
  }

  valid = sw_sync_fence_is_valid(fence);
  ASSERT(valid, "Failure merging fences\n");





  if (iterations % 8 != 0) {
   ASSERT(sync_wait(fence, -1) > 0,
          "Producers did not increment as expected\n");
  } else {
   ASSERT(busy_wait_on_fence(fence) == 0,
          "Producers did not increment as expected\n");
  }

  ASSERT(test_data_mpsc.counter == n * it,
         "Counter value mismatch!\n");


  ASSERT(sw_sync_timeline_inc(consumer_timeline, 1) == 0,
         "Failure releasing producer threads\n");

  sw_sync_fence_destroy(fence);
 }

 return 0;
}
