
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int qsort_arg_comparator ;
struct TYPE_12__ {scalar_t__ f_cmp; } ;
typedef TYPE_2__ gbtree_ninfo ;
struct TYPE_15__ {int* spl_left; int* spl_right; size_t spl_nleft; size_t spl_nright; void* spl_rdatum; void* spl_ldatum; } ;
struct TYPE_14__ {int n; TYPE_1__* vector; } ;
struct TYPE_13__ {int i; int * t; } ;
struct TYPE_11__ {int key; } ;
typedef int OffsetNumber ;
typedef TYPE_3__ Nsrt ;
typedef TYPE_4__ GistEntryVector ;
typedef TYPE_5__ GIST_SPLITVEC ;
typedef int GBT_NUMKEY ;
typedef int FmgrInfo ;


 scalar_t__ DatumGetPointer (int ) ;
 size_t FirstOffsetNumber ;
 int OffsetNumberNext (int) ;
 void* PointerGetDatum (int ) ;
 int gbt_num_bin_union (void**,int *,TYPE_2__ const*,int *) ;
 scalar_t__ palloc (int) ;
 int qsort_arg (void*,int,int,int ,void*) ;

GIST_SPLITVEC *
gbt_num_picksplit(const GistEntryVector *entryvec, GIST_SPLITVEC *v,
      const gbtree_ninfo *tinfo, FmgrInfo *flinfo)
{
 OffsetNumber i,
    maxoff = entryvec->n - 1;
 Nsrt *arr;
 int nbytes;

 arr = (Nsrt *) palloc((maxoff + 1) * sizeof(Nsrt));
 nbytes = (maxoff + 2) * sizeof(OffsetNumber);
 v->spl_left = (OffsetNumber *) palloc(nbytes);
 v->spl_right = (OffsetNumber *) palloc(nbytes);
 v->spl_ldatum = PointerGetDatum(0);
 v->spl_rdatum = PointerGetDatum(0);
 v->spl_nleft = 0;
 v->spl_nright = 0;



 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  arr[i].t = (GBT_NUMKEY *) DatumGetPointer((entryvec->vector[i].key));
  arr[i].i = i;
 }
 qsort_arg((void *) &arr[FirstOffsetNumber], maxoff - FirstOffsetNumber + 1, sizeof(Nsrt), (qsort_arg_comparator) tinfo->f_cmp, (void *) flinfo);



 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  if (i <= (maxoff - FirstOffsetNumber + 1) / 2)
  {
   gbt_num_bin_union(&v->spl_ldatum, arr[i].t, tinfo, flinfo);
   v->spl_left[v->spl_nleft] = arr[i].i;
   v->spl_nleft++;
  }
  else
  {
   gbt_num_bin_union(&v->spl_rdatum, arr[i].t, tinfo, flinfo);
   v->spl_right[v->spl_nright] = arr[i].i;
   v->spl_nright++;
  }
 }

 return v;
}
