
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_8__ {int ndatums; int** kind; int* indexes; int default_index; int null_index; int ** datums; int strategy; } ;
struct TYPE_7__ {int partnatts; scalar_t__ strategy; int* parttypbyval; int* parttyplen; } ;
typedef int PartitionRangeDatumKind ;
typedef TYPE_1__* PartitionKey ;
typedef int PartitionBoundInfoData ;
typedef TYPE_2__* PartitionBoundInfo ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ PARTITION_RANGE_DATUM_VALUE ;
 scalar_t__ PARTITION_STRATEGY_HASH ;
 scalar_t__ PARTITION_STRATEGY_LIST ;
 int datumCopy (int ,int,int) ;
 int get_partition_bound_num_indexes (TYPE_2__*) ;
 int memcpy (int*,int*,int) ;
 scalar_t__ palloc (int) ;

PartitionBoundInfo
partition_bounds_copy(PartitionBoundInfo src,
       PartitionKey key)
{
 PartitionBoundInfo dest;
 int i;
 int ndatums;
 int partnatts;
 int num_indexes;

 dest = (PartitionBoundInfo) palloc(sizeof(PartitionBoundInfoData));

 dest->strategy = src->strategy;
 ndatums = dest->ndatums = src->ndatums;
 partnatts = key->partnatts;

 num_indexes = get_partition_bound_num_indexes(src);


 Assert(key->strategy != PARTITION_STRATEGY_LIST || partnatts == 1);

 dest->datums = (Datum **) palloc(sizeof(Datum *) * ndatums);

 if (src->kind != ((void*)0))
 {
  dest->kind = (PartitionRangeDatumKind **) palloc(ndatums *
               sizeof(PartitionRangeDatumKind *));
  for (i = 0; i < ndatums; i++)
  {
   dest->kind[i] = (PartitionRangeDatumKind *) palloc(partnatts *
                  sizeof(PartitionRangeDatumKind));

   memcpy(dest->kind[i], src->kind[i],
       sizeof(PartitionRangeDatumKind) * key->partnatts);
  }
 }
 else
  dest->kind = ((void*)0);

 for (i = 0; i < ndatums; i++)
 {
  int j;





  bool hash_part = (key->strategy == PARTITION_STRATEGY_HASH);
  int natts = hash_part ? 2 : partnatts;

  dest->datums[i] = (Datum *) palloc(sizeof(Datum) * natts);

  for (j = 0; j < natts; j++)
  {
   bool byval;
   int typlen;

   if (hash_part)
   {
    typlen = sizeof(int32);
    byval = 1;
   }
   else
   {
    byval = key->parttypbyval[j];
    typlen = key->parttyplen[j];
   }

   if (dest->kind == ((void*)0) ||
    dest->kind[i][j] == PARTITION_RANGE_DATUM_VALUE)
    dest->datums[i][j] = datumCopy(src->datums[i][j],
              byval, typlen);
  }
 }

 dest->indexes = (int *) palloc(sizeof(int) * num_indexes);
 memcpy(dest->indexes, src->indexes, sizeof(int) * num_indexes);

 dest->null_index = src->null_index;
 dest->default_index = src->default_index;

 return dest;
}
