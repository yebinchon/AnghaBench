
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int ** traversalValues; int * reconstructedValues; scalar_t__* levelAdds; } ;
typedef TYPE_3__ spgInnerConsistentOut ;
struct TYPE_19__ {int t_tid; } ;
struct TYPE_14__ {int attlen; int attbyval; } ;
struct TYPE_15__ {TYPE_1__ attLeafType; } ;
struct TYPE_18__ {TYPE_2__ state; } ;
struct TYPE_17__ {int isLeaf; int recheck; int recheckDistances; int * traversalValue; int value; scalar_t__ level; int heapPtr; } ;
typedef TYPE_4__ SpGistSearchItem ;
typedef TYPE_5__* SpGistScanOpaque ;
typedef TYPE_6__* SpGistNodeTuple ;
typedef int Datum ;


 int datumCopy (int ,int ,int ) ;
 TYPE_4__* spgAllocSearchItem (TYPE_5__*,int,double*) ;

__attribute__((used)) static SpGistSearchItem *
spgMakeInnerItem(SpGistScanOpaque so,
     SpGistSearchItem *parentItem,
     SpGistNodeTuple tuple,
     spgInnerConsistentOut *out, int i, bool isnull,
     double *distances)
{
 SpGistSearchItem *item = spgAllocSearchItem(so, isnull, distances);

 item->heapPtr = tuple->t_tid;
 item->level = out->levelAdds ? parentItem->level + out->levelAdds[i]
  : parentItem->level;


 item->value = out->reconstructedValues
  ? datumCopy(out->reconstructedValues[i],
     so->state.attLeafType.attbyval,
     so->state.attLeafType.attlen)
  : (Datum) 0;






 item->traversalValue =
  out->traversalValues ? out->traversalValues[i] : ((void*)0);

 item->isLeaf = 0;
 item->recheck = 0;
 item->recheckDistances = 0;

 return item;
}
