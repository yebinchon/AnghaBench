
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* TupleDesc ;
struct TYPE_12__ {int * arg; int func; } ;
struct TYPE_9__ {int eoh_context; } ;
struct TYPE_11__ {int er_tupdesc_id; TYPE_2__* er_tupdesc; TYPE_7__ er_mcb; TYPE_1__ hdr; int er_typmod; int er_typeid; } ;
struct TYPE_10__ {scalar_t__ tdrefcount; int tdtypmod; int tdtypeid; } ;
typedef TYPE_3__ ExpandedRecordHeader ;


 int DecrTupleDescRefCount (TYPE_2__*) ;
 int ER_mc_callback ;
 int MemoryContextRegisterResetCallback (int ,TYPE_7__*) ;
 int assign_record_type_identifier (int ,int ) ;
 TYPE_2__* lookup_rowtype_tupdesc (int ,int ) ;

TupleDesc
expanded_record_fetch_tupdesc(ExpandedRecordHeader *erh)
{
 TupleDesc tupdesc;


 if (erh->er_tupdesc)
  return erh->er_tupdesc;


 tupdesc = lookup_rowtype_tupdesc(erh->er_typeid, erh->er_typmod);







 if (tupdesc->tdrefcount >= 0)
 {

  if (erh->er_mcb.arg == ((void*)0))
  {
   erh->er_mcb.func = ER_mc_callback;
   erh->er_mcb.arg = (void *) erh;
   MemoryContextRegisterResetCallback(erh->hdr.eoh_context,
              &erh->er_mcb);
  }


  erh->er_tupdesc = tupdesc;
  tupdesc->tdrefcount++;


  DecrTupleDescRefCount(tupdesc);
 }
 else
 {

  erh->er_tupdesc = tupdesc;
 }


 erh->er_tupdesc_id = assign_record_type_identifier(tupdesc->tdtypeid,
                tupdesc->tdtypmod);

 return tupdesc;
}
