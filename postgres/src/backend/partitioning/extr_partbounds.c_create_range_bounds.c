
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int null_index; int default_index; int ndatums; scalar_t__** kind; int* indexes; int ** datums; int strategy; } ;
struct TYPE_14__ {scalar_t__ strategy; int upperdatums; int lowerdatums; scalar_t__ is_default; } ;
struct TYPE_13__ {int partnatts; int * parttyplen; int * parttypbyval; int * partcollation; int * partsupfunc; int strategy; } ;
struct TYPE_12__ {scalar_t__* kind; int index; scalar_t__ lower; int * datums; } ;
typedef scalar_t__ PartitionRangeDatumKind ;
typedef TYPE_1__ PartitionRangeBound ;
typedef TYPE_2__* PartitionKey ;
typedef TYPE_3__ PartitionBoundSpec ;
typedef TYPE_4__ PartitionBoundInfoData ;
typedef TYPE_4__* PartitionBoundInfo ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetInt32 (int ) ;
 int ERROR ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ PARTITION_RANGE_DATUM_VALUE ;
 scalar_t__ PARTITION_STRATEGY_RANGE ;
 int datumCopy (int ,int ,int ) ;
 int elog (int ,char*) ;
 TYPE_1__* make_one_partition_rbound (TYPE_2__*,int,int ,int) ;
 scalar_t__ palloc (int) ;
 scalar_t__ palloc0 (int) ;
 int qsort_arg (TYPE_1__**,int,int,int ,void*) ;
 int qsort_partition_rbound_cmp ;

__attribute__((used)) static PartitionBoundInfo
create_range_bounds(PartitionBoundSpec **boundspecs, int nparts,
     PartitionKey key, int **mapping)
{
 PartitionBoundInfo boundinfo;
 PartitionRangeBound **rbounds = ((void*)0);
 PartitionRangeBound **all_bounds,
      *prev;
 int i,
    k;
 int ndatums = 0;
 int default_index = -1;
 int next_index = 0;

 boundinfo = (PartitionBoundInfoData *)
  palloc0(sizeof(PartitionBoundInfoData));
 boundinfo->strategy = key->strategy;

 boundinfo->null_index = -1;

 boundinfo->default_index = -1;

 all_bounds = (PartitionRangeBound **)
  palloc0(2 * nparts * sizeof(PartitionRangeBound *));


 ndatums = 0;
 for (i = 0; i < nparts; i++)
 {
  PartitionBoundSpec *spec = boundspecs[i];
  PartitionRangeBound *lower,
       *upper;

  if (spec->strategy != PARTITION_STRATEGY_RANGE)
   elog(ERROR, "invalid strategy in partition bound spec");






  if (spec->is_default)
  {
   default_index = i;
   continue;
  }

  lower = make_one_partition_rbound(key, i, spec->lowerdatums, 1);
  upper = make_one_partition_rbound(key, i, spec->upperdatums, 0);
  all_bounds[ndatums++] = lower;
  all_bounds[ndatums++] = upper;
 }

 Assert(ndatums == nparts * 2 ||
     (default_index != -1 && ndatums == (nparts - 1) * 2));


 qsort_arg(all_bounds, ndatums,
     sizeof(PartitionRangeBound *),
     qsort_partition_rbound_cmp,
     (void *) key);


 rbounds = (PartitionRangeBound **)
  palloc(ndatums * sizeof(PartitionRangeBound *));
 k = 0;
 prev = ((void*)0);
 for (i = 0; i < ndatums; i++)
 {
  PartitionRangeBound *cur = all_bounds[i];
  bool is_distinct = 0;
  int j;


  for (j = 0; j < key->partnatts; j++)
  {
   Datum cmpval;

   if (prev == ((void*)0) || cur->kind[j] != prev->kind[j])
   {
    is_distinct = 1;
    break;
   }






   if (cur->kind[j] != PARTITION_RANGE_DATUM_VALUE)
    break;

   cmpval = FunctionCall2Coll(&key->partsupfunc[j],
            key->partcollation[j],
            cur->datums[j],
            prev->datums[j]);
   if (DatumGetInt32(cmpval) != 0)
   {
    is_distinct = 1;
    break;
   }
  }





  if (is_distinct)
   rbounds[k++] = all_bounds[i];

  prev = cur;
 }


 ndatums = k;
 boundinfo->ndatums = ndatums;
 boundinfo->datums = (Datum **) palloc0(ndatums * sizeof(Datum *));
 boundinfo->kind = (PartitionRangeDatumKind **)
  palloc(ndatums *
      sizeof(PartitionRangeDatumKind *));





 boundinfo->indexes = (int *) palloc((ndatums + 1) * sizeof(int));

 for (i = 0; i < ndatums; i++)
 {
  int j;

  boundinfo->datums[i] = (Datum *) palloc(key->partnatts *
            sizeof(Datum));
  boundinfo->kind[i] = (PartitionRangeDatumKind *)
   palloc(key->partnatts *
       sizeof(PartitionRangeDatumKind));
  for (j = 0; j < key->partnatts; j++)
  {
   if (rbounds[i]->kind[j] == PARTITION_RANGE_DATUM_VALUE)
    boundinfo->datums[i][j] =
     datumCopy(rbounds[i]->datums[j],
         key->parttypbyval[j],
         key->parttyplen[j]);
   boundinfo->kind[i][j] = rbounds[i]->kind[j];
  }
  if (rbounds[i]->lower)
   boundinfo->indexes[i] = -1;
  else
  {
   int orig_index = rbounds[i]->index;


   if ((*mapping)[orig_index] == -1)
    (*mapping)[orig_index] = next_index++;

   boundinfo->indexes[i] = (*mapping)[orig_index];
  }
 }


 if (default_index != -1)
 {
  Assert(default_index >= 0 && (*mapping)[default_index] == -1);
  (*mapping)[default_index] = next_index++;
  boundinfo->default_index = (*mapping)[default_index];
 }


 Assert(i == ndatums);
 boundinfo->indexes[i] = -1;


 Assert(next_index == nparts);
 return boundinfo;
}
