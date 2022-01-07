
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int strategy; } ;
typedef TYPE_1__* PartitionKey ;
typedef int PartitionBoundSpec ;
typedef int * PartitionBoundInfo ;


 int Assert (int) ;
 int ERROR ;



 int * create_hash_bounds (int **,int,TYPE_1__*,int**) ;
 int * create_list_bounds (int **,int,TYPE_1__*,int**) ;
 int * create_range_bounds (int **,int,TYPE_1__*,int**) ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc (int) ;

PartitionBoundInfo
partition_bounds_create(PartitionBoundSpec **boundspecs, int nparts,
      PartitionKey key, int **mapping)
{
 int i;

 Assert(nparts > 0);
 *mapping = (int *) palloc(sizeof(int) * nparts);
 for (i = 0; i < nparts; i++)
  (*mapping)[i] = -1;

 switch (key->strategy)
 {
  case 130:
   return create_hash_bounds(boundspecs, nparts, key, mapping);

  case 129:
   return create_list_bounds(boundspecs, nparts, key, mapping);

  case 128:
   return create_range_bounds(boundspecs, nparts, key, mapping);

  default:
   elog(ERROR, "unexpected partition strategy: %d",
     (int) key->strategy);
   break;
 }

 Assert(0);
 return ((void*)0);
}
