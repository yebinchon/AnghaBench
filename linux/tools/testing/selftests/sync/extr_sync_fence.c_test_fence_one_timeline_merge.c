
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int,char*) ;
 int FENCE_STATUS_ACTIVE ;
 int FENCE_STATUS_SIGNALED ;
 int sw_sync_fence_create (int,char*,int) ;
 int sw_sync_fence_destroy (int) ;
 int sw_sync_fence_is_valid (int) ;
 int sw_sync_timeline_create () ;
 int sw_sync_timeline_destroy (int) ;
 int sw_sync_timeline_inc (int,int) ;
 int sync_fence_count_with_status (int,int ) ;
 int sync_merge (char*,int,int) ;

int test_fence_one_timeline_merge(void)
{
 int a, b, c, d, valid;
 int timeline = sw_sync_timeline_create();


 a = sw_sync_fence_create(timeline, "allocFence", 1);
 b = sw_sync_fence_create(timeline, "allocFence", 2);
 c = sw_sync_fence_create(timeline, "allocFence", 3);

 valid = sw_sync_fence_is_valid(a) &&
  sw_sync_fence_is_valid(b) &&
  sw_sync_fence_is_valid(c);
 ASSERT(valid, "Failure allocating fences\n");

 d = sync_merge("mergeFence", b, a);
 d = sync_merge("mergeFence", c, d);
 valid = sw_sync_fence_is_valid(d);
 ASSERT(valid, "Failure merging fences\n");


 ASSERT(sync_fence_count_with_status(a, FENCE_STATUS_ACTIVE) == 1,
        "a has too many active fences!\n");
 ASSERT(sync_fence_count_with_status(a, FENCE_STATUS_ACTIVE) == 1,
        "b has too many active fences!\n");
 ASSERT(sync_fence_count_with_status(a, FENCE_STATUS_ACTIVE) == 1,
        "c has too many active fences!\n");
 ASSERT(sync_fence_count_with_status(a, FENCE_STATUS_ACTIVE) == 1,
        "d has too many active fences!\n");


 sw_sync_timeline_inc(timeline, 1);
 ASSERT(sync_fence_count_with_status(a, FENCE_STATUS_SIGNALED) == 1,
        "a did not signal!\n");
 ASSERT(sync_fence_count_with_status(d, FENCE_STATUS_ACTIVE) == 1,
        "d signaled too early!\n");

 sw_sync_timeline_inc(timeline, 1);
 ASSERT(sync_fence_count_with_status(b, FENCE_STATUS_SIGNALED) == 1,
        "b did not signal!\n");
 ASSERT(sync_fence_count_with_status(d, FENCE_STATUS_ACTIVE) == 1,
        "d signaled too early!\n");

 sw_sync_timeline_inc(timeline, 1);
 ASSERT(sync_fence_count_with_status(c, FENCE_STATUS_SIGNALED) == 1,
        "c did not signal!\n");
 ASSERT(sync_fence_count_with_status(d, FENCE_STATUS_ACTIVE) == 0 &&
        sync_fence_count_with_status(d, FENCE_STATUS_SIGNALED) == 1,
        "d did not signal!\n");

 sw_sync_fence_destroy(d);
 sw_sync_fence_destroy(c);
 sw_sync_fence_destroy(b);
 sw_sync_fence_destroy(a);
 sw_sync_timeline_destroy(timeline);
 return 0;
}
