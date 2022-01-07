
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int allocatedMemory; TYPE_1__* ginstate; } ;
struct TYPE_7__ {int attlen; scalar_t__ attbyval; } ;
struct TYPE_6__ {int origTupdesc; } ;
typedef scalar_t__ OffsetNumber ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Datum ;
typedef TYPE_3__ BuildAccumulator ;


 int DatumGetPointer (int ) ;
 scalar_t__ GetMemoryChunkSpace (int ) ;
 TYPE_2__* TupleDescAttr (int ,scalar_t__) ;
 int datumCopy (int ,int,int ) ;

__attribute__((used)) static Datum
getDatumCopy(BuildAccumulator *accum, OffsetNumber attnum, Datum value)
{
 Form_pg_attribute att;
 Datum res;

 att = TupleDescAttr(accum->ginstate->origTupdesc, attnum - 1);
 if (att->attbyval)
  res = value;
 else
 {
  res = datumCopy(value, 0, att->attlen);
  accum->allocatedMemory += GetMemoryChunkSpace(DatumGetPointer(res));
 }
 return res;
}
