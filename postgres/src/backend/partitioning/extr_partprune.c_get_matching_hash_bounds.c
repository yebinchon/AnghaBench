
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_9__ {int* indexes; scalar_t__ ndatums; } ;
struct TYPE_8__ {int partnatts; scalar_t__ strategy; int * partcollation; TYPE_3__* boundinfo; } ;
struct TYPE_7__ {int scan_null; int scan_default; int bound_offsets; } ;
typedef scalar_t__ StrategyNumber ;
typedef TYPE_1__ PruneStepResult ;
typedef TYPE_2__ PartitionPruneContext ;
typedef TYPE_3__* PartitionBoundInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int Bitmapset ;


 int Assert (int) ;
 scalar_t__ HTEqualStrategyNumber ;
 int PARTITION_MAX_KEYS ;
 scalar_t__ PARTITION_STRATEGY_HASH ;
 int bms_add_range (int *,int ,scalar_t__) ;
 int bms_is_member (int,int *) ;
 int bms_make_singleton (int) ;
 int bms_num_members (int *) ;
 int compute_partition_hash_value (int,int *,int *,int *,int*) ;
 int get_hash_partition_greatest_modulus (TYPE_3__*) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static PruneStepResult *
get_matching_hash_bounds(PartitionPruneContext *context,
       StrategyNumber opstrategy, Datum *values, int nvalues,
       FmgrInfo *partsupfunc, Bitmapset *nullkeys)
{
 PruneStepResult *result = (PruneStepResult *) palloc0(sizeof(PruneStepResult));
 PartitionBoundInfo boundinfo = context->boundinfo;
 int *partindices = boundinfo->indexes;
 int partnatts = context->partnatts;
 bool isnull[PARTITION_MAX_KEYS];
 int i;
 uint64 rowHash;
 int greatest_modulus;
 Oid *partcollation = context->partcollation;

 Assert(context->strategy == PARTITION_STRATEGY_HASH);






 if (nvalues + bms_num_members(nullkeys) == partnatts)
 {




  Assert(opstrategy == HTEqualStrategyNumber || nvalues == 0);

  for (i = 0; i < partnatts; i++)
   isnull[i] = bms_is_member(i, nullkeys);

  greatest_modulus = get_hash_partition_greatest_modulus(boundinfo);
  rowHash = compute_partition_hash_value(partnatts, partsupfunc, partcollation,
              values, isnull);

  if (partindices[rowHash % greatest_modulus] >= 0)
   result->bound_offsets =
    bms_make_singleton(rowHash % greatest_modulus);
 }
 else
 {

  Assert(boundinfo->ndatums > 0);
  result->bound_offsets = bms_add_range(((void*)0), 0,
             boundinfo->ndatums - 1);
 }





 result->scan_null = result->scan_default = 0;

 return result;
}
