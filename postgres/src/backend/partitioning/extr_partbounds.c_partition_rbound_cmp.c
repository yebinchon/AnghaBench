
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int lower; scalar_t__* kind; int * datums; } ;
typedef scalar_t__ PartitionRangeDatumKind ;
typedef TYPE_1__ PartitionRangeBound ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ PARTITION_RANGE_DATUM_VALUE ;

__attribute__((used)) static int32
partition_rbound_cmp(int partnatts, FmgrInfo *partsupfunc,
      Oid *partcollation,
      Datum *datums1, PartitionRangeDatumKind *kind1,
      bool lower1, PartitionRangeBound *b2)
{
 int32 cmpval = 0;
 int i;
 Datum *datums2 = b2->datums;
 PartitionRangeDatumKind *kind2 = b2->kind;
 bool lower2 = b2->lower;

 for (i = 0; i < partnatts; i++)
 {






  if (kind1[i] < kind2[i])
   return -1;
  else if (kind1[i] > kind2[i])
   return 1;
  else if (kind1[i] != PARTITION_RANGE_DATUM_VALUE)






   break;

  cmpval = DatumGetInt32(FunctionCall2Coll(&partsupfunc[i],
             partcollation[i],
             datums1[i],
             datums2[i]));
  if (cmpval != 0)
   break;
 }







 if (cmpval == 0 && lower1 != lower2)
  cmpval = lower1 ? 1 : -1;

 return cmpval;
}
