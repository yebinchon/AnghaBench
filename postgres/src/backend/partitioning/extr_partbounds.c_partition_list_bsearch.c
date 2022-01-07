
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {int ndatums; int ** datums; } ;
typedef TYPE_1__* PartitionBoundInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

int
partition_list_bsearch(FmgrInfo *partsupfunc, Oid *partcollation,
        PartitionBoundInfo boundinfo,
        Datum value, bool *is_equal)
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
  cmpval = DatumGetInt32(FunctionCall2Coll(&partsupfunc[0],
             partcollation[0],
             boundinfo->datums[mid][0],
             value));
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
