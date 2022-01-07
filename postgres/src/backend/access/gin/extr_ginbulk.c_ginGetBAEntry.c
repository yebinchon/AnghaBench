
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_5__ {int tree_walk; } ;
struct TYPE_4__ {int count; scalar_t__ shouldSort; int * list; int category; int key; int attnum; } ;
typedef int OffsetNumber ;
typedef int ItemPointerData ;
typedef int GinNullCategory ;
typedef TYPE_1__ GinEntryAccumulator ;
typedef int Datum ;
typedef TYPE_2__ BuildAccumulator ;


 int Assert (int) ;
 int qsort (int *,int,int,int ) ;
 int qsortCompareItemPointers ;
 scalar_t__ rbt_iterate (int *) ;

ItemPointerData *
ginGetBAEntry(BuildAccumulator *accum,
     OffsetNumber *attnum, Datum *key, GinNullCategory *category,
     uint32 *n)
{
 GinEntryAccumulator *entry;
 ItemPointerData *list;

 entry = (GinEntryAccumulator *) rbt_iterate(&accum->tree_walk);

 if (entry == ((void*)0))
  return ((void*)0);

 *attnum = entry->attnum;
 *key = entry->key;
 *category = entry->category;
 list = entry->list;
 *n = entry->count;

 Assert(list != ((void*)0) && entry->count > 0);

 if (entry->shouldSort && entry->count > 1)
  qsort(list, entry->count, sizeof(ItemPointerData),
     qsortCompareItemPointers);

 return list;
}
