
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int,char*) ;
 int sw_sync_fence_create (int,char*,int) ;
 int sw_sync_fence_destroy (int) ;
 int sw_sync_fence_is_valid (int) ;
 int sw_sync_timeline_create () ;
 int sw_sync_timeline_destroy (int) ;
 int sw_sync_timeline_inc (int,int) ;
 int sw_sync_timeline_is_valid (int) ;
 int sync_wait (int,int ) ;

int test_fence_one_timeline_wait(void)
{
 int fence, valid, ret;
 int timeline = sw_sync_timeline_create();

 valid = sw_sync_timeline_is_valid(timeline);
 ASSERT(valid, "Failure allocating timeline\n");

 fence = sw_sync_fence_create(timeline, "allocFence", 5);
 valid = sw_sync_fence_is_valid(fence);
 ASSERT(valid, "Failure allocating fence\n");


 ret = sync_wait(fence, 0);
 ASSERT(ret == 0, "Failure waiting on fence until timeout\n");


 ret = sw_sync_timeline_inc(timeline, 1);
 ASSERT(ret == 0, "Failure advancing timeline\n");


 ret = sync_wait(fence, 0);
 ASSERT(ret == 0, "Failure waiting on fence until timeout\n");


 ret = sw_sync_timeline_inc(timeline, 4);
 ASSERT(ret == 0, "Failure signaling the fence\n");


 ret = sync_wait(fence, 0);
 ASSERT(ret > 0, "Failure waiting on fence\n");


 ret = sw_sync_timeline_inc(timeline, 10);
 ASSERT(ret == 0, "Failure going further\n");
 ret = sync_wait(fence, 0);
 ASSERT(ret > 0, "Failure waiting ahead\n");

 sw_sync_fence_destroy(fence);
 sw_sync_timeline_destroy(timeline);

 return 0;
}
