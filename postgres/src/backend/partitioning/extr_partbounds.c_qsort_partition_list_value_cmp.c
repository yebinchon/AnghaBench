
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {int * partcollation; int * partsupfunc; } ;
struct TYPE_3__ {int value; } ;
typedef TYPE_1__ PartitionListValue ;
typedef TYPE_2__* PartitionKey ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;

__attribute__((used)) static int32
qsort_partition_list_value_cmp(const void *a, const void *b, void *arg)
{
 Datum val1 = (*(PartitionListValue *const *) a)->value,
    val2 = (*(PartitionListValue *const *) b)->value;
 PartitionKey key = (PartitionKey) arg;

 return DatumGetInt32(FunctionCall2Coll(&key->partsupfunc[0],
             key->partcollation[0],
             val1, val2));
}
