
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tts_tupleDescriptor; } ;
typedef TYPE_1__ TupleTableSlot ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_9__ {scalar_t__ atttypid; scalar_t__ attisdropped; } ;
struct TYPE_8__ {int natts; scalar_t__ tdtypeid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* Form_pg_attribute ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 int elog (int ,char*,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ,int ) ;
 int errmsg (char*,int,int ) ;
 int format_type_be (scalar_t__) ;

__attribute__((used)) static void
CheckVarSlotCompatibility(TupleTableSlot *slot, int attnum, Oid vartype)
{
 if (attnum > 0)
 {
  TupleDesc slot_tupdesc = slot->tts_tupleDescriptor;
  Form_pg_attribute attr;

  if (attnum > slot_tupdesc->natts)
   elog(ERROR, "attribute number %d exceeds number of columns %d",
     attnum, slot_tupdesc->natts);

  attr = TupleDescAttr(slot_tupdesc, attnum - 1);

  if (attr->attisdropped)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("attribute %d of type %s has been dropped",
       attnum, format_type_be(slot_tupdesc->tdtypeid))));

  if (vartype != attr->atttypid)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("attribute %d of type %s has wrong type",
       attnum, format_type_be(slot_tupdesc->tdtypeid)),
      errdetail("Table has type %s, but query expects %s.",
          format_type_be(attr->atttypid),
          format_type_be(vartype))));
 }
}
