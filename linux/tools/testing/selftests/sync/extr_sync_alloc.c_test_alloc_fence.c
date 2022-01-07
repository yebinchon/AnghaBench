
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
 int sw_sync_timeline_is_valid (int) ;

int test_alloc_fence(void)
{
 int timeline, fence, valid;

 timeline = sw_sync_timeline_create();
 valid = sw_sync_timeline_is_valid(timeline);
 ASSERT(valid, "Failure allocating timeline\n");

 fence = sw_sync_fence_create(timeline, "allocFence", 1);
 valid = sw_sync_fence_is_valid(fence);
 ASSERT(valid, "Failure allocating fence\n");

 sw_sync_fence_destroy(fence);
 sw_sync_timeline_destroy(timeline);
 return 0;
}
