
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int,char*) ;
 int sw_sync_timeline_create () ;
 int sw_sync_timeline_destroy (int) ;
 int sw_sync_timeline_is_valid (int) ;

int test_alloc_timeline(void)
{
 int timeline, valid;

 timeline = sw_sync_timeline_create();
 valid = sw_sync_timeline_is_valid(timeline);
 ASSERT(valid, "Failure allocating timeline\n");

 sw_sync_timeline_destroy(timeline);
 return 0;
}
