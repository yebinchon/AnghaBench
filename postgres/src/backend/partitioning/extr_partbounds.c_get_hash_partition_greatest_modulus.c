
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ strategy; int ndatums; int ** datums; } ;
typedef TYPE_1__* PartitionBoundInfo ;


 int Assert (int) ;
 int DatumGetInt32 (int ) ;
 scalar_t__ PARTITION_STRATEGY_HASH ;

int
get_hash_partition_greatest_modulus(PartitionBoundInfo bound)
{
 Assert(bound && bound->strategy == PARTITION_STRATEGY_HASH);
 Assert(bound->datums && bound->ndatums > 0);
 Assert(DatumGetInt32(bound->datums[bound->ndatums - 1][0]) > 0);

 return DatumGetInt32(bound->datums[bound->ndatums - 1][0]);
}
