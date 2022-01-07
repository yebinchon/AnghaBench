
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int datum_context; } ;
struct TYPE_5__ {scalar_t__ dtype; int * erh; } ;
typedef TYPE_1__ PLpgSQL_rec ;
typedef TYPE_2__ PLpgSQL_execstate ;
typedef int ExpandedRecordHeader ;


 int Assert (int) ;
 int DeleteExpandedObject (int ) ;
 int ExpandedRecordGetDatum (int *) ;
 scalar_t__ PLPGSQL_DTYPE_REC ;
 int TransferExpandedRecord (int *,int ) ;

__attribute__((used)) static void
assign_record_var(PLpgSQL_execstate *estate, PLpgSQL_rec *rec,
      ExpandedRecordHeader *erh)
{
 Assert(rec->dtype == PLPGSQL_DTYPE_REC);


 TransferExpandedRecord(erh, estate->datum_context);


 if (rec->erh)
  DeleteExpandedObject(ExpandedRecordGetDatum(rec->erh));


 rec->erh = erh;
}
