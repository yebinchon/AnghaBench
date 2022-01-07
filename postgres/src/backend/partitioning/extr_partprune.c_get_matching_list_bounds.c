
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int ndatums; scalar_t__* indexes; } ;
struct TYPE_10__ {scalar_t__ strategy; int partnatts; int * partcollation; TYPE_3__* boundinfo; } ;
struct TYPE_9__ {int scan_null; int scan_default; void* bound_offsets; } ;
typedef int StrategyNumber ;
typedef TYPE_1__ PruneStepResult ;
typedef TYPE_2__ PartitionPruneContext ;
typedef TYPE_3__* PartitionBoundInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int Bitmapset ;


 int Assert (int) ;





 int ERROR ;
 int InvalidStrategy ;
 scalar_t__ PARTITION_STRATEGY_LIST ;
 void* bms_add_range (int *,int,int) ;
 void* bms_del_member (void*,int) ;
 int bms_is_empty (int *) ;
 void* bms_make_singleton (int) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc0 (int) ;
 scalar_t__ partition_bound_accepts_nulls (TYPE_3__*) ;
 void* partition_bound_has_default (TYPE_3__*) ;
 int partition_list_bsearch (int *,int *,TYPE_3__*,int ,int*) ;

__attribute__((used)) static PruneStepResult *
get_matching_list_bounds(PartitionPruneContext *context,
       StrategyNumber opstrategy, Datum value, int nvalues,
       FmgrInfo *partsupfunc, Bitmapset *nullkeys)
{
 PruneStepResult *result = (PruneStepResult *) palloc0(sizeof(PruneStepResult));
 PartitionBoundInfo boundinfo = context->boundinfo;
 int off,
    minoff,
    maxoff;
 bool is_equal;
 bool inclusive = 0;
 Oid *partcollation = context->partcollation;

 Assert(context->strategy == PARTITION_STRATEGY_LIST);
 Assert(context->partnatts == 1);

 result->scan_null = result->scan_default = 0;

 if (!bms_is_empty(nullkeys))
 {





  if (partition_bound_accepts_nulls(boundinfo))
   result->scan_null = 1;
  else
   result->scan_default = partition_bound_has_default(boundinfo);
  return result;
 }





 if (boundinfo->ndatums == 0)
 {
  result->scan_default = partition_bound_has_default(boundinfo);
  return result;
 }

 minoff = 0;
 maxoff = boundinfo->ndatums - 1;






 if (nvalues == 0)
 {
  Assert(boundinfo->ndatums > 0);
  result->bound_offsets = bms_add_range(((void*)0), 0,
             boundinfo->ndatums - 1);
  result->scan_default = partition_bound_has_default(boundinfo);
  return result;
 }


 if (opstrategy == InvalidStrategy)
 {



  Assert(boundinfo->ndatums > 0);
  result->bound_offsets = bms_add_range(((void*)0), 0,
             boundinfo->ndatums - 1);

  off = partition_list_bsearch(partsupfunc, partcollation, boundinfo,
          value, &is_equal);
  if (off >= 0 && is_equal)
  {


   Assert(boundinfo->indexes[off] >= 0);
   result->bound_offsets = bms_del_member(result->bound_offsets,
               off);
  }


  result->scan_default = partition_bound_has_default(boundinfo);

  return result;
 }
 if (opstrategy != 132)
  result->scan_default = partition_bound_has_default(boundinfo);

 switch (opstrategy)
 {
  case 132:
   off = partition_list_bsearch(partsupfunc,
           partcollation,
           boundinfo, value,
           &is_equal);
   if (off >= 0 && is_equal)
   {
    Assert(boundinfo->indexes[off] >= 0);
    result->bound_offsets = bms_make_singleton(off);
   }
   else
    result->scan_default = partition_bound_has_default(boundinfo);
   return result;

  case 131:
   inclusive = 1;

  case 130:
   off = partition_list_bsearch(partsupfunc,
           partcollation,
           boundinfo, value,
           &is_equal);
   if (off >= 0)
   {

    if (!is_equal || !inclusive)
     off++;
   }
   else
   {




    off = 0;
   }







   if (off > boundinfo->ndatums - 1)
    return result;

   minoff = off;
   break;

  case 129:
   inclusive = 1;

  case 128:
   off = partition_list_bsearch(partsupfunc,
           partcollation,
           boundinfo, value,
           &is_equal);
   if (off >= 0 && is_equal && !inclusive)
    off--;







   if (off < 0)
    return result;

   maxoff = off;
   break;

  default:
   elog(ERROR, "invalid strategy number %d", opstrategy);
   break;
 }

 Assert(minoff >= 0 && maxoff >= 0);
 result->bound_offsets = bms_add_range(((void*)0), minoff, maxoff);
 return result;
}
