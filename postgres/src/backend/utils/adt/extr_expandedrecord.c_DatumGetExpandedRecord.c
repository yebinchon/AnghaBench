
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ er_magic; } ;
typedef TYPE_1__ ExpandedRecordHeader ;
typedef int Datum ;


 int Assert (int) ;
 int CurrentMemoryContext ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 scalar_t__ ER_MAGIC ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int make_expanded_record_from_datum (int ,int ) ;

ExpandedRecordHeader *
DatumGetExpandedRecord(Datum d)
{

 if (VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(d)))
 {
  ExpandedRecordHeader *erh = (ExpandedRecordHeader *) DatumGetEOHP(d);

  Assert(erh->er_magic == ER_MAGIC);
  return erh;
 }


 d = make_expanded_record_from_datum(d, CurrentMemoryContext);
 return (ExpandedRecordHeader *) DatumGetEOHP(d);
}
