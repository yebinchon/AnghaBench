
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int attlen; int attbyval; } ;
struct TYPE_10__ {TYPE_1__ attLeafType; } ;
struct TYPE_12__ {TYPE_2__ state; } ;
struct TYPE_11__ {int level; int isLeaf; int recheck; int recheckDistances; int * traversalValue; int value; int heapPtr; } ;
typedef TYPE_3__ SpGistSearchItem ;
typedef TYPE_4__* SpGistScanOpaque ;
typedef int * ItemPointer ;
typedef int Datum ;


 int datumCopy (int ,int ,int ) ;
 TYPE_3__* spgAllocSearchItem (TYPE_4__*,int,double*) ;

__attribute__((used)) static SpGistSearchItem *
spgNewHeapItem(SpGistScanOpaque so, int level, ItemPointer heapPtr,
      Datum leafValue, bool recheck, bool recheckDistances,
      bool isnull, double *distances)
{
 SpGistSearchItem *item = spgAllocSearchItem(so, isnull, distances);

 item->level = level;
 item->heapPtr = *heapPtr;

 item->value = isnull ? (Datum) 0 :
  datumCopy(leafValue, so->state.attLeafType.attbyval,
      so->state.attLeafType.attlen);
 item->traversalValue = ((void*)0);
 item->isLeaf = 1;
 item->recheck = recheck;
 item->recheckDistances = recheckDistances;

 return item;
}
