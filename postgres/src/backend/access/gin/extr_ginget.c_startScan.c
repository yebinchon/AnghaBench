
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_8__ {int predictNumberResult; int reduceResult; } ;
struct TYPE_7__ {size_t totalentries; size_t nkeys; scalar_t__ keys; TYPE_4__** entries; int ginstate; } ;
struct TYPE_6__ {int xs_snapshot; int opaque; } ;
typedef TYPE_1__* IndexScanDesc ;
typedef int GinState ;
typedef TYPE_2__* GinScanOpaque ;


 int GinFuzzySearchLimit ;
 int startScanEntry (int *,TYPE_4__*,int ) ;
 int startScanKey (int *,TYPE_2__*,scalar_t__) ;

__attribute__((used)) static void
startScan(IndexScanDesc scan)
{
 GinScanOpaque so = (GinScanOpaque) scan->opaque;
 GinState *ginstate = &so->ginstate;
 uint32 i;

 for (i = 0; i < so->totalentries; i++)
  startScanEntry(ginstate, so->entries[i], scan->xs_snapshot);

 if (GinFuzzySearchLimit > 0)
 {






  bool reduce = 1;

  for (i = 0; i < so->totalentries; i++)
  {
   if (so->entries[i]->predictNumberResult <= so->totalentries * GinFuzzySearchLimit)
   {
    reduce = 0;
    break;
   }
  }
  if (reduce)
  {
   for (i = 0; i < so->totalentries; i++)
   {
    so->entries[i]->predictNumberResult /= so->totalentries;
    so->entries[i]->reduceResult = 1;
   }
  }
 }





 for (i = 0; i < so->nkeys; i++)
  startScanKey(ginstate, so, so->keys + i);
}
