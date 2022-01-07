
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int16 ;
struct TYPE_5__ {scalar_t__ strategy; int ndatums; scalar_t__ null_index; scalar_t__ default_index; scalar_t__* indexes; scalar_t__** datums; scalar_t__** kind; } ;
typedef TYPE_1__* PartitionBoundInfo ;


 int Assert (int) ;
 scalar_t__ PARTITION_RANGE_DATUM_VALUE ;
 scalar_t__ PARTITION_STRATEGY_HASH ;
 scalar_t__ PARTITION_STRATEGY_RANGE ;
 int datumIsEqual (scalar_t__,scalar_t__,int,int ) ;
 int get_hash_partition_greatest_modulus (TYPE_1__*) ;

bool
partition_bounds_equal(int partnatts, int16 *parttyplen, bool *parttypbyval,
        PartitionBoundInfo b1, PartitionBoundInfo b2)
{
 int i;

 if (b1->strategy != b2->strategy)
  return 0;

 if (b1->ndatums != b2->ndatums)
  return 0;

 if (b1->null_index != b2->null_index)
  return 0;

 if (b1->default_index != b2->default_index)
  return 0;

 if (b1->strategy == PARTITION_STRATEGY_HASH)
 {
  int greatest_modulus = get_hash_partition_greatest_modulus(b1);





  if (greatest_modulus != get_hash_partition_greatest_modulus(b2))
   return 0;
  for (i = 0; i < greatest_modulus; i++)
   if (b1->indexes[i] != b2->indexes[i])
    return 0;
 }
 else
 {
  for (i = 0; i < b1->ndatums; i++)
  {
   int j;

   for (j = 0; j < partnatts; j++)
   {

    if (b1->kind != ((void*)0))
    {

     if (b1->kind[i][j] != b2->kind[i][j])
      return 0;





     if (b1->kind[i][j] != PARTITION_RANGE_DATUM_VALUE)
      continue;
    }
    if (!datumIsEqual(b1->datums[i][j], b2->datums[i][j],
          parttypbyval[j], parttyplen[j]))
     return 0;
   }

   if (b1->indexes[i] != b2->indexes[i])
    return 0;
  }


  if (b1->strategy == PARTITION_STRATEGY_RANGE &&
   b1->indexes[i] != b2->indexes[i])
   return 0;
 }
 return 1;
}
