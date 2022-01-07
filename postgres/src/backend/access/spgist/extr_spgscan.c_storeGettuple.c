
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int distances ;
struct TYPE_6__ {double value; int isnull; } ;
struct TYPE_5__ {size_t nPtrs; int* recheck; int* recheckDistances; int numberOfOrderBys; scalar_t__ numberOfNonNullOrderBys; int* nonNullOrderByOffsets; int indexTupDesc; int * reconTups; scalar_t__ want_itup; TYPE_2__** distances; int * heapPtrs; } ;
typedef TYPE_1__* SpGistScanOpaque ;
typedef int * ItemPointer ;
typedef TYPE_2__ IndexOrderByDistance ;
typedef int Datum ;


 int Assert (int) ;
 size_t MaxIndexTuplesPerPage ;
 int heap_form_tuple (int ,int *,int*) ;
 TYPE_2__* palloc (int) ;

__attribute__((used)) static void
storeGettuple(SpGistScanOpaque so, ItemPointer heapPtr,
     Datum leafValue, bool isnull, bool recheck, bool recheckDistances,
     double *nonNullDistances)
{
 Assert(so->nPtrs < MaxIndexTuplesPerPage);
 so->heapPtrs[so->nPtrs] = *heapPtr;
 so->recheck[so->nPtrs] = recheck;
 so->recheckDistances[so->nPtrs] = recheckDistances;

 if (so->numberOfOrderBys > 0)
 {
  if (isnull || so->numberOfNonNullOrderBys <= 0)
   so->distances[so->nPtrs] = ((void*)0);
  else
  {
   IndexOrderByDistance *distances =
   palloc(sizeof(distances[0]) * so->numberOfOrderBys);
   int i;

   for (i = 0; i < so->numberOfOrderBys; i++)
   {
    int offset = so->nonNullOrderByOffsets[i];

    if (offset >= 0)
    {

     distances[i].value = nonNullDistances[offset];
     distances[i].isnull = 0;
    }
    else
    {

     distances[i].value = 0.0;
     distances[i].isnull = 1;
    }
   }

   so->distances[so->nPtrs] = distances;
  }
 }

 if (so->want_itup)
 {




  so->reconTups[so->nPtrs] = heap_form_tuple(so->indexTupDesc,
               &leafValue,
               &isnull);
 }
 so->nPtrs++;
}
