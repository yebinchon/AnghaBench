
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef scalar_t__ PartitionRangeDatumKind ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int DatumGetInt32 (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ PARTITION_RANGE_DATUM_MAXVALUE ;
 scalar_t__ PARTITION_RANGE_DATUM_MINVALUE ;

int32
partition_rbound_datum_cmp(FmgrInfo *partsupfunc, Oid *partcollation,
         Datum *rb_datums, PartitionRangeDatumKind *rb_kind,
         Datum *tuple_datums, int n_tuple_datums)
{
 int i;
 int32 cmpval = -1;

 for (i = 0; i < n_tuple_datums; i++)
 {
  if (rb_kind[i] == PARTITION_RANGE_DATUM_MINVALUE)
   return -1;
  else if (rb_kind[i] == PARTITION_RANGE_DATUM_MAXVALUE)
   return 1;

  cmpval = DatumGetInt32(FunctionCall2Coll(&partsupfunc[i],
             partcollation[i],
             rb_datums[i],
             tuple_datums[i]));
  if (cmpval != 0)
   break;
 }

 return cmpval;
}
