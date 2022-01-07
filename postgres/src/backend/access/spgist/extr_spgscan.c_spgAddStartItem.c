
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int zeroDistances; } ;
struct TYPE_8__ {int isLeaf; int recheck; int recheckDistances; int * traversalValue; scalar_t__ value; scalar_t__ level; int heapPtr; } ;
typedef TYPE_1__ SpGistSearchItem ;
typedef TYPE_2__* SpGistScanOpaque ;
typedef scalar_t__ Datum ;


 int FirstOffsetNumber ;
 int ItemPointerSet (int *,int ,int ) ;
 int SPGIST_NULL_BLKNO ;
 int SPGIST_ROOT_BLKNO ;
 int spgAddSearchItemToQueue (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* spgAllocSearchItem (TYPE_2__*,int,int ) ;

__attribute__((used)) static void
spgAddStartItem(SpGistScanOpaque so, bool isnull)
{
 SpGistSearchItem *startEntry =
 spgAllocSearchItem(so, isnull, so->zeroDistances);

 ItemPointerSet(&startEntry->heapPtr,
       isnull ? SPGIST_NULL_BLKNO : SPGIST_ROOT_BLKNO,
       FirstOffsetNumber);
 startEntry->isLeaf = 0;
 startEntry->level = 0;
 startEntry->value = (Datum) 0;
 startEntry->traversalValue = ((void*)0);
 startEntry->recheck = 0;
 startEntry->recheckDistances = 0;

 spgAddSearchItemToQueue(so, startEntry);
}
