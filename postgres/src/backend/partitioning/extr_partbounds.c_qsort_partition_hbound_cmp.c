
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_2__ {int remainder; int modulus; } ;
typedef TYPE_1__ PartitionHashBound ;


 int partition_hbound_cmp (int ,int ,int ,int ) ;

__attribute__((used)) static int32
qsort_partition_hbound_cmp(const void *a, const void *b)
{
 PartitionHashBound *h1 = (*(PartitionHashBound *const *) a);
 PartitionHashBound *h2 = (*(PartitionHashBound *const *) b);

 return partition_hbound_cmp(h1->modulus, h1->remainder,
        h2->modulus, h2->remainder);
}
