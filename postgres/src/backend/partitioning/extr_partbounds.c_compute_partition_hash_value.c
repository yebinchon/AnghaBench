
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_4__ {int fn_oid; } ;
typedef int Oid ;
typedef TYPE_1__ FmgrInfo ;
typedef int Datum ;


 int Assert (int ) ;
 int DatumGetUInt64 (int ) ;
 int FunctionCall2Coll (TYPE_1__*,int ,int ,int ) ;
 int HASH_PARTITION_SEED ;
 int OidIsValid (int ) ;
 int UInt64GetDatum (int ) ;
 int hash_combine64 (int ,int ) ;

uint64
compute_partition_hash_value(int partnatts, FmgrInfo *partsupfunc, Oid *partcollation,
        Datum *values, bool *isnull)
{
 int i;
 uint64 rowHash = 0;
 Datum seed = UInt64GetDatum(HASH_PARTITION_SEED);

 for (i = 0; i < partnatts; i++)
 {

  if (!isnull[i])
  {
   Datum hash;

   Assert(OidIsValid(partsupfunc[i].fn_oid));






   hash = FunctionCall2Coll(&partsupfunc[i], partcollation[i],
          values[i], seed);


   rowHash = hash_combine64(rowHash, DatumGetUInt64(hash));
  }
 }

 return rowHash;
}
