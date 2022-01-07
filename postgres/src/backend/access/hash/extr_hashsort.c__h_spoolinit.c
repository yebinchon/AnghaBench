
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int high_mask; int low_mask; int max_buckets; int sortstate; int index; } ;
typedef int Relation ;
typedef TYPE_1__ HSpool ;


 int _hash_log2 (int) ;
 int maintenance_work_mem ;
 scalar_t__ palloc0 (int) ;
 int tuplesort_begin_index_hash (int ,int ,int,int,int,int ,int *,int) ;

HSpool *
_h_spoolinit(Relation heap, Relation index, uint32 num_buckets)
{
 HSpool *hspool = (HSpool *) palloc0(sizeof(HSpool));

 hspool->index = index;
 hspool->high_mask = (((uint32) 1) << _hash_log2(num_buckets + 1)) - 1;
 hspool->low_mask = (hspool->high_mask >> 1);
 hspool->max_buckets = num_buckets - 1;






 hspool->sortstate = tuplesort_begin_index_hash(heap,
               index,
               hspool->high_mask,
               hspool->low_mask,
               hspool->max_buckets,
               maintenance_work_mem,
               ((void*)0),
               0);

 return hspool;
}
