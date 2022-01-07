
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fence_map ;


 int ASSERT (int,char*) ;
 int memset (int*,int,int) ;
 int rand () ;
 int srand (int ) ;
 int sw_sync_fence_create (int,char*,int) ;
 int sw_sync_fence_destroy (int) ;
 int sw_sync_fence_is_valid (int) ;
 int sw_sync_timeline_create () ;
 int sw_sync_timeline_destroy (int) ;
 int sw_sync_timeline_inc (int,int) ;
 int sync_fence_size (int) ;
 int sync_merge (char*,int,int) ;
 int sync_wait (int,int ) ;
 int time (int *) ;

int test_merge_stress_random_merge(void)
{
 int i, size, ret;
 int timeline_count = 32;
 int merge_count = 1024 * 32;
 int timelines[timeline_count];
 int fence_map[timeline_count];
 int fence, tmpfence, merged, valid;
 int timeline, timeline_offset, sync_point;

 srand(time(((void*)0)));

 for (i = 0; i < timeline_count; i++)
  timelines[i] = sw_sync_timeline_create();

 fence = sw_sync_fence_create(timelines[0], "fence", 0);
 valid = sw_sync_fence_is_valid(fence);
 ASSERT(valid, "Failure creating fence\n");

 memset(fence_map, -1, sizeof(fence_map));
 fence_map[0] = 0;





 for (i = 0; i < merge_count; i++) {

  timeline_offset = rand() % timeline_count;
  timeline = timelines[timeline_offset];
  sync_point = rand();


  if (fence_map[timeline_offset] == -1)
   fence_map[timeline_offset] = sync_point;
  else if (fence_map[timeline_offset] < sync_point)
   fence_map[timeline_offset] = sync_point;


  tmpfence = sw_sync_fence_create(timeline, "fence", sync_point);
  merged = sync_merge("merge", tmpfence, fence);
  sw_sync_fence_destroy(tmpfence);
  sw_sync_fence_destroy(fence);
  fence = merged;

  valid = sw_sync_fence_is_valid(merged);
  ASSERT(valid, "Failure creating fence i\n");
 }

 size = 0;
 for (i = 0; i < timeline_count; i++)
  if (fence_map[i] != -1)
   size++;


 ASSERT(sync_fence_size(fence) == size,
        "Quantity of elements not matching\n");


 for (i = 0; i < timeline_count; i++) {
  if (fence_map[i] != -1) {
   ret = sync_wait(fence, 0);
   ASSERT(ret == 0,
          "Failure waiting on fence until timeout\n");

   sw_sync_timeline_inc(timelines[i], fence_map[i]);
  }
 }


 ret = sync_wait(fence, 0);
 ASSERT(ret > 0, "Failure triggering fence\n");

 sw_sync_fence_destroy(fence);

 for (i = 0; i < timeline_count; i++)
  sw_sync_timeline_destroy(timelines[i]);

 return 0;
}
