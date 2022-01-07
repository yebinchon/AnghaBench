
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_10__ {int* indexes; int ndatums; scalar_t__** kind; int * datums; } ;
struct TYPE_9__ {int partnatts; scalar_t__ strategy; int * partcollation; TYPE_3__* boundinfo; } ;
struct TYPE_8__ {int scan_null; int scan_default; void* bound_offsets; } ;
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
 scalar_t__ PARTITION_RANGE_DATUM_MAXVALUE ;
 scalar_t__ PARTITION_RANGE_DATUM_MINVALUE ;
 scalar_t__ PARTITION_STRATEGY_RANGE ;
 void* bms_add_range (int *,int,int) ;
 int bms_is_empty (int *) ;
 void* bms_make_singleton (int) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc0 (int) ;
 void* partition_bound_has_default (TYPE_3__*) ;
 int partition_range_datum_bsearch (int *,int *,TYPE_3__*,int,int *,int*) ;
 int partition_rbound_datum_cmp (int *,int *,int ,scalar_t__*,int *,int) ;

__attribute__((used)) static PruneStepResult *
get_matching_range_bounds(PartitionPruneContext *context,
        StrategyNumber opstrategy, Datum *values, int nvalues,
        FmgrInfo *partsupfunc, Bitmapset *nullkeys)
{
 PruneStepResult *result = (PruneStepResult *) palloc0(sizeof(PruneStepResult));
 PartitionBoundInfo boundinfo = context->boundinfo;
 Oid *partcollation = context->partcollation;
 int partnatts = context->partnatts;
 int *partindices = boundinfo->indexes;
 int off,
    minoff,
    maxoff;
 bool is_equal;
 bool inclusive = 0;

 Assert(context->strategy == PARTITION_STRATEGY_RANGE);
 Assert(nvalues <= partnatts);

 result->scan_null = result->scan_default = 0;





 if (boundinfo->ndatums == 0 || !bms_is_empty(nullkeys))
 {
  result->scan_default = partition_bound_has_default(boundinfo);
  return result;
 }

 minoff = 0;
 maxoff = boundinfo->ndatums;







 if (nvalues == 0)
 {

  if (partindices[minoff] < 0)
   minoff++;
  if (partindices[maxoff] < 0)
   maxoff--;

  result->scan_default = partition_bound_has_default(boundinfo);
  Assert(partindices[minoff] >= 0 &&
      partindices[maxoff] >= 0);
  result->bound_offsets = bms_add_range(((void*)0), minoff, maxoff);

  return result;
 }





 if (nvalues < partnatts)
  result->scan_default = partition_bound_has_default(boundinfo);

 switch (opstrategy)
 {
  case 132:

   off = partition_range_datum_bsearch(partsupfunc,
            partcollation,
            boundinfo,
            nvalues, values,
            &is_equal);

   if (off >= 0 && is_equal)
   {
    if (nvalues == partnatts)
    {

     result->bound_offsets = bms_make_singleton(off + 1);
     return result;
    }
    else
    {
     int saved_off = off;
     while (off >= 1)
     {
      int32 cmpval;

      cmpval =
       partition_rbound_datum_cmp(partsupfunc,
                partcollation,
                boundinfo->datums[off - 1],
                boundinfo->kind[off - 1],
                values, nvalues);
      if (cmpval != 0)
       break;
      off--;
     }

     Assert(0 ==
         partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[off],
               boundinfo->kind[off],
               values, nvalues));
     if (boundinfo->kind[off][nvalues] ==
      PARTITION_RANGE_DATUM_MINVALUE)
      off++;

     minoff = off;





     off = saved_off;
     while (off < boundinfo->ndatums - 1)
     {
      int32 cmpval;

      cmpval = partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[off + 1],
               boundinfo->kind[off + 1],
               values, nvalues);
      if (cmpval != 0)
       break;
      off++;
     }

     Assert(0 ==
         partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[off],
               boundinfo->kind[off],
               values, nvalues));





     maxoff = off + 1;
    }

    Assert(minoff >= 0 && maxoff >= 0);
    result->bound_offsets = bms_add_range(((void*)0), minoff, maxoff);
   }
   else
   {
    result->bound_offsets = bms_make_singleton(off + 1);
   }

   return result;

  case 131:
   inclusive = 1;

  case 130:





   off = partition_range_datum_bsearch(partsupfunc,
            partcollation,
            boundinfo,
            nvalues, values,
            &is_equal);
   if (off < 0)
   {




    minoff = 0;
   }
   else
   {
    if (is_equal && nvalues < partnatts)
    {
     while (off >= 1 && off < boundinfo->ndatums - 1)
     {
      int32 cmpval;
      int nextoff;

      nextoff = inclusive ? off - 1 : off + 1;
      cmpval =
       partition_rbound_datum_cmp(partsupfunc,
                partcollation,
                boundinfo->datums[nextoff],
                boundinfo->kind[nextoff],
                values, nvalues);
      if (cmpval != 0)
       break;

      off = nextoff;
     }

     Assert(0 ==
         partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[off],
               boundinfo->kind[off],
               values, nvalues));

     minoff = inclusive ? off : off + 1;
    }
    else
    {
     minoff = off + 1;
    }
   }
   break;

  case 129:
   inclusive = 1;

  case 128:





   off = partition_range_datum_bsearch(partsupfunc,
            partcollation,
            boundinfo,
            nvalues, values,
            &is_equal);
   if (off >= 0)
   {



    if (is_equal && nvalues < partnatts)
    {
     while (off >= 1 && off < boundinfo->ndatums - 1)
     {
      int32 cmpval;
      int nextoff;

      nextoff = inclusive ? off + 1 : off - 1;
      cmpval = partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[nextoff],
               boundinfo->kind[nextoff],
               values, nvalues);
      if (cmpval != 0)
       break;

      off = nextoff;
     }

     Assert(0 ==
         partition_rbound_datum_cmp(partsupfunc,
               partcollation,
               boundinfo->datums[off],
               boundinfo->kind[off],
               values, nvalues));

     maxoff = inclusive ? off + 1 : off;
    }
    else if (!is_equal || inclusive)
     maxoff = off + 1;
    else
     maxoff = off;
   }
   else
   {




    maxoff = off + 1;
   }
   break;

  default:
   elog(ERROR, "invalid strategy number %d", opstrategy);
   break;
 }

 Assert(minoff >= 0 && minoff <= boundinfo->ndatums);
 Assert(maxoff >= 0 && maxoff <= boundinfo->ndatums);







 if (minoff < boundinfo->ndatums && partindices[minoff] < 0)
 {
  int lastkey = nvalues - 1;

  if (boundinfo->kind[minoff][lastkey] ==
   PARTITION_RANGE_DATUM_MINVALUE)
  {
   minoff++;
   Assert(boundinfo->indexes[minoff] >= 0);
  }
 }
 if (maxoff >= 1 && partindices[maxoff] < 0)
 {
  int lastkey = nvalues - 1;

  if (boundinfo->kind[maxoff - 1][lastkey] ==
   PARTITION_RANGE_DATUM_MAXVALUE)
  {
   maxoff--;
   Assert(boundinfo->indexes[maxoff] >= 0);
  }
 }

 Assert(minoff >= 0 && maxoff >= 0);
 if (minoff <= maxoff)
  result->bound_offsets = bms_add_range(((void*)0), minoff, maxoff);

 return result;
}
