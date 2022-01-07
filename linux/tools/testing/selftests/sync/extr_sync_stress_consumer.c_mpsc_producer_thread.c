
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* producer_timelines; int consumer_timeline; int iterations; int lock; int counter; } ;


 int ASSERT (int,char*) ;
 scalar_t__ busy_wait_on_fence (int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sw_sync_fence_create (int,char*,int) ;
 int sw_sync_fence_destroy (int) ;
 int sw_sync_fence_is_valid (int) ;
 scalar_t__ sw_sync_timeline_inc (int,int) ;
 scalar_t__ sync_wait (int,int) ;
 TYPE_1__ test_data_mpsc ;

__attribute__((used)) static int mpsc_producer_thread(void *d)
{
 int id = (long)d;
 int fence, valid, i;
 int *producer_timelines = test_data_mpsc.producer_timelines;
 int consumer_timeline = test_data_mpsc.consumer_timeline;
 int iterations = test_data_mpsc.iterations;

 for (i = 0; i < iterations; i++) {
  fence = sw_sync_fence_create(consumer_timeline, "fence", i);
  valid = sw_sync_fence_is_valid(fence);
  ASSERT(valid, "Failure creating fence\n");






  if ((iterations + id) % 8 != 0) {
   ASSERT(sync_wait(fence, -1) > 0,
          "Failure waiting on fence\n");
  } else {
   ASSERT(busy_wait_on_fence(fence) == 0,
          "Failure waiting on fence\n");
  }





  pthread_mutex_lock(&test_data_mpsc.lock);
  test_data_mpsc.counter++;
  pthread_mutex_unlock(&test_data_mpsc.lock);

  ASSERT(sw_sync_timeline_inc(producer_timelines[id], 1) == 0,
         "Error advancing producer timeline\n");

  sw_sync_fence_destroy(fence);
 }

 return 0;
}
