
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int partcollation; int partsupfunc; int partnatts; } ;
struct TYPE_4__ {int lower; int kind; int datums; } ;
typedef TYPE_1__ PartitionRangeBound ;
typedef TYPE_2__* PartitionKey ;


 int partition_rbound_cmp (int ,int ,int ,int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static int32
qsort_partition_rbound_cmp(const void *a, const void *b, void *arg)
{
 PartitionRangeBound *b1 = (*(PartitionRangeBound *const *) a);
 PartitionRangeBound *b2 = (*(PartitionRangeBound *const *) b);
 PartitionKey key = (PartitionKey) arg;

 return partition_rbound_cmp(key->partnatts, key->partsupfunc,
        key->partcollation, b1->datums, b1->kind,
        b1->lower, b2);
}
