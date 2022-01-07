
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;


 int AVC_NUM_SLOTS ;
 int MemoryContextReset (int ) ;
 scalar_t__ avc_lru_hint ;
 int avc_mem_cxt ;
 scalar_t__ avc_num_caches ;
 int avc_slots ;
 int * avc_unlabeled ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
sepgsql_avc_reset(void)
{
 MemoryContextReset(avc_mem_cxt);

 memset(avc_slots, 0, sizeof(List *) * AVC_NUM_SLOTS);
 avc_num_caches = 0;
 avc_lru_hint = 0;
 avc_unlabeled = ((void*)0);
}
