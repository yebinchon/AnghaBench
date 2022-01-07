
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
typedef scalar_t__ int64 ;
struct TYPE_3__ {int index; int low_mask; int high_mask; int max_buckets; int sortstate; } ;
typedef int Relation ;
typedef int * IndexTuple ;
typedef TYPE_1__ HSpool ;


 int Assert (int) ;
 int PROGRESS_CREATEIDX_TUPLES_DONE ;
 int _hash_doinsert (int ,int *,int ) ;
 int _hash_get_indextuple_hashkey (int *) ;
 scalar_t__ _hash_hashkey2bucket (int ,int ,int ,int ) ;
 int pgstat_progress_update_param (int ,scalar_t__) ;
 int * tuplesort_getindextuple (int ,int) ;
 int tuplesort_performsort (int ) ;

void
_h_indexbuild(HSpool *hspool, Relation heapRel)
{
 IndexTuple itup;
 int64 tups_done = 0;




 tuplesort_performsort(hspool->sortstate);

 while ((itup = tuplesort_getindextuple(hspool->sortstate, 1)) != ((void*)0))
 {
  _hash_doinsert(hspool->index, itup, heapRel);

  pgstat_progress_update_param(PROGRESS_CREATEIDX_TUPLES_DONE,
          ++tups_done);
 }
}
