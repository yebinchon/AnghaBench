
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int strategy; int ndatums; } ;
typedef TYPE_1__* PartitionBoundInfo ;


 int Assert (TYPE_1__*) ;
 int ERROR ;



 int elog (int ,char*,int) ;
 int get_hash_partition_greatest_modulus (TYPE_1__*) ;

__attribute__((used)) static int
get_partition_bound_num_indexes(PartitionBoundInfo bound)
{
 int num_indexes;

 Assert(bound);

 switch (bound->strategy)
 {
  case 130:





   num_indexes = get_hash_partition_greatest_modulus(bound);
   break;

  case 129:
   num_indexes = bound->ndatums;
   break;

  case 128:

   num_indexes = bound->ndatums + 1;
   break;

  default:
   elog(ERROR, "unexpected partition strategy: %d",
     (int) bound->strategy);
 }

 return num_indexes;
}
