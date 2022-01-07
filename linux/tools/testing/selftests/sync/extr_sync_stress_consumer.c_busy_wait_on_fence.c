
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int,char*) ;
 int FENCE_STATUS_ACTIVE ;
 int FENCE_STATUS_ERROR ;
 int sync_fence_count_with_status (int,int ) ;

__attribute__((used)) static int busy_wait_on_fence(int fence)
{
 int error, active;

 do {
  error = sync_fence_count_with_status(fence, FENCE_STATUS_ERROR);
  ASSERT(error == 0, "Error occurred on fence\n");
  active = sync_fence_count_with_status(fence,
            FENCE_STATUS_ACTIVE);
 } while (active);

 return 0;
}
