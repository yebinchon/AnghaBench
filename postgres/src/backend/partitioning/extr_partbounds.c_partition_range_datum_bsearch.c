
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {int ndatums; int * kind; int * datums; } ;
typedef TYPE_1__* PartitionBoundInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ partition_rbound_datum_cmp (int *,int *,int ,int ,int *,int) ;

int
partition_range_datum_bsearch(FmgrInfo *partsupfunc, Oid *partcollation,
         PartitionBoundInfo boundinfo,
         int nvalues, Datum *values, bool *is_equal)
{
 int lo,
    hi,
    mid;

 lo = -1;
 hi = boundinfo->ndatums - 1;
 while (lo < hi)
 {
  int32 cmpval;

  mid = (lo + hi + 1) / 2;
  cmpval = partition_rbound_datum_cmp(partsupfunc,
           partcollation,
           boundinfo->datums[mid],
           boundinfo->kind[mid],
           values,
           nvalues);
  if (cmpval <= 0)
  {
   lo = mid;
   *is_equal = (cmpval == 0);

   if (*is_equal)
    break;
  }
  else
   hi = mid - 1;
 }

 return lo;
}
