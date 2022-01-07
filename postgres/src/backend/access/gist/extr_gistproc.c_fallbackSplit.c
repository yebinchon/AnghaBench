
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int* spl_left; int* spl_right; size_t spl_nleft; size_t spl_nright; void* spl_rdatum; void* spl_ldatum; } ;
struct TYPE_7__ {int n; TYPE_1__* vector; } ;
struct TYPE_6__ {int key; } ;
typedef int OffsetNumber ;
typedef TYPE_2__ GistEntryVector ;
typedef TYPE_3__ GIST_SPLITVEC ;
typedef int BOX ;


 void* BoxPGetDatum (int *) ;
 int * DatumGetBoxP (int ) ;
 int FirstOffsetNumber ;
 int OffsetNumberNext (int) ;
 int adjustBox (int *,int *) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
fallbackSplit(GistEntryVector *entryvec, GIST_SPLITVEC *v)
{
 OffsetNumber i,
    maxoff;
 BOX *unionL = ((void*)0),
      *unionR = ((void*)0);
 int nbytes;

 maxoff = entryvec->n - 1;

 nbytes = (maxoff + 2) * sizeof(OffsetNumber);
 v->spl_left = (OffsetNumber *) palloc(nbytes);
 v->spl_right = (OffsetNumber *) palloc(nbytes);
 v->spl_nleft = v->spl_nright = 0;

 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  BOX *cur = DatumGetBoxP(entryvec->vector[i].key);

  if (i <= (maxoff - FirstOffsetNumber + 1) / 2)
  {
   v->spl_left[v->spl_nleft] = i;
   if (unionL == ((void*)0))
   {
    unionL = (BOX *) palloc(sizeof(BOX));
    *unionL = *cur;
   }
   else
    adjustBox(unionL, cur);

   v->spl_nleft++;
  }
  else
  {
   v->spl_right[v->spl_nright] = i;
   if (unionR == ((void*)0))
   {
    unionR = (BOX *) palloc(sizeof(BOX));
    *unionR = *cur;
   }
   else
    adjustBox(unionR, cur);

   v->spl_nright++;
  }
 }

 v->spl_ldatum = BoxPGetDatum(unionL);
 v->spl_rdatum = BoxPGetDatum(unionR);
}
