
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int hashkey ;
typedef TYPE_1__* UnresolvedTup ;
struct TYPE_11__ {int tid; int xmin; } ;
typedef TYPE_2__ TidHashKey ;
struct TYPE_13__ {int t_self; int t_data; } ;
struct TYPE_12__ {int rs_unresolved_tups; } ;
struct TYPE_10__ {int tuple; } ;
typedef TYPE_3__* RewriteState ;
typedef TYPE_4__* HeapTuple ;


 int Assert (int) ;
 int HASH_FIND ;
 int HASH_REMOVE ;
 int HeapTupleHeaderGetXmin (int ) ;
 TYPE_1__* hash_search (int ,TYPE_2__*,int ,int*) ;
 int heap_freetuple (int ) ;
 int memset (TYPE_2__*,int ,int) ;

bool
rewrite_heap_dead_tuple(RewriteState state, HeapTuple old_tuple)
{
 UnresolvedTup unresolved;
 TidHashKey hashkey;
 bool found;

 memset(&hashkey, 0, sizeof(hashkey));
 hashkey.xmin = HeapTupleHeaderGetXmin(old_tuple->t_data);
 hashkey.tid = old_tuple->t_self;

 unresolved = hash_search(state->rs_unresolved_tups, &hashkey,
        HASH_FIND, ((void*)0));

 if (unresolved != ((void*)0))
 {

  heap_freetuple(unresolved->tuple);
  hash_search(state->rs_unresolved_tups, &hashkey,
     HASH_REMOVE, &found);
  Assert(found);
  return 1;
 }

 return 0;
}
