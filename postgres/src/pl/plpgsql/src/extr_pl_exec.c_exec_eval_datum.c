
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_18__ ;
typedef struct TYPE_25__ TYPE_13__ ;


typedef int int32 ;
struct TYPE_34__ {int er_typmod; int er_tupdesc_id; int er_typeid; } ;
struct TYPE_33__ {int dtype; } ;
struct TYPE_32__ {scalar_t__* datums; } ;
struct TYPE_31__ {int refname; TYPE_8__* erh; int rectypeid; } ;
struct TYPE_26__ {int ftypmod; int fnumber; int ftypeid; } ;
struct TYPE_30__ {size_t recparentno; TYPE_18__ finfo; int rectupledescid; int fieldname; } ;
struct TYPE_29__ {TYPE_13__* rowtupdesc; } ;
struct TYPE_28__ {int isnull; int value; TYPE_1__* datatype; } ;
struct TYPE_27__ {int atttypmod; int typoid; } ;
struct TYPE_25__ {int tdtypmod; int tdtypeid; } ;
typedef TYPE_2__ PLpgSQL_var ;
typedef TYPE_3__ PLpgSQL_row ;
typedef TYPE_4__ PLpgSQL_recfield ;
typedef TYPE_5__ PLpgSQL_rec ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef TYPE_7__ PLpgSQL_datum ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int * HeapTuple ;
typedef TYPE_8__ ExpandedRecordHeader ;
typedef int Datum ;


 int BlessTupleDesc (TYPE_13__*) ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int ExpandedRecordGetDatum (TYPE_8__*) ;
 int ExpandedRecordIsEmpty (TYPE_8__*) ;
 int HeapTupleGetDatum (int *) ;
 int MemoryContextSwitchTo (int ) ;





 int RECORDOID ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 int expanded_record_get_field (TYPE_8__*,int ,int*) ;
 int expanded_record_lookup_field (TYPE_8__*,int ,TYPE_18__*) ;
 int get_eval_mcontext (TYPE_6__*) ;
 int instantiate_empty_record_variable (TYPE_6__*,TYPE_5__*) ;
 int * make_tuple_from_row (TYPE_6__*,TYPE_3__*,TYPE_13__*) ;
 int plpgsql_fulfill_promise (TYPE_6__*,TYPE_2__*) ;
 int unlikely (int) ;

__attribute__((used)) static void
exec_eval_datum(PLpgSQL_execstate *estate,
    PLpgSQL_datum *datum,
    Oid *typeid,
    int32 *typetypmod,
    Datum *value,
    bool *isnull)
{
 MemoryContext oldcontext;

 switch (datum->dtype)
 {
  case 132:

   plpgsql_fulfill_promise(estate, (PLpgSQL_var *) datum);



  case 128:
   {
    PLpgSQL_var *var = (PLpgSQL_var *) datum;

    *typeid = var->datatype->typoid;
    *typetypmod = var->datatype->atttypmod;
    *value = var->value;
    *isnull = var->isnull;
    break;
   }

  case 129:
   {
    PLpgSQL_row *row = (PLpgSQL_row *) datum;
    HeapTuple tup;


    if (!row->rowtupdesc)
     elog(ERROR, "row variable has no tupdesc");

    BlessTupleDesc(row->rowtupdesc);
    oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
    tup = make_tuple_from_row(estate, row, row->rowtupdesc);
    if (tup == ((void*)0))
     elog(ERROR, "row not compatible with its own tupdesc");
    *typeid = row->rowtupdesc->tdtypeid;
    *typetypmod = row->rowtupdesc->tdtypmod;
    *value = HeapTupleGetDatum(tup);
    *isnull = 0;
    MemoryContextSwitchTo(oldcontext);
    break;
   }

  case 131:
   {
    PLpgSQL_rec *rec = (PLpgSQL_rec *) datum;

    if (rec->erh == ((void*)0))
    {

     *value = (Datum) 0;
     *isnull = 1;

     *typeid = rec->rectypeid;
     *typetypmod = -1;
    }
    else
    {
     if (ExpandedRecordIsEmpty(rec->erh))
     {

      *value = (Datum) 0;
      *isnull = 1;
     }
     else
     {
      *value = ExpandedRecordGetDatum(rec->erh);
      *isnull = 0;
     }
     if (rec->rectypeid != RECORDOID)
     {

      *typeid = rec->rectypeid;
      *typetypmod = -1;
     }
     else
     {

      *typeid = rec->erh->er_typeid;
      *typetypmod = rec->erh->er_typmod;
     }
    }
    break;
   }

  case 130:
   {
    PLpgSQL_recfield *recfield = (PLpgSQL_recfield *) datum;
    PLpgSQL_rec *rec;
    ExpandedRecordHeader *erh;

    rec = (PLpgSQL_rec *) (estate->datums[recfield->recparentno]);
    erh = rec->erh;






    if (erh == ((void*)0))
    {
     instantiate_empty_record_variable(estate, rec);
     erh = rec->erh;
    }





    if (unlikely(recfield->rectupledescid != erh->er_tupdesc_id))
    {
     if (!expanded_record_lookup_field(erh,
               recfield->fieldname,
               &recfield->finfo))
      ereport(ERROR,
        (errcode(ERRCODE_UNDEFINED_COLUMN),
         errmsg("record \"%s\" has no field \"%s\"",
          rec->refname, recfield->fieldname)));
     recfield->rectupledescid = erh->er_tupdesc_id;
    }


    *typeid = recfield->finfo.ftypeid;
    *typetypmod = recfield->finfo.ftypmod;


    *value = expanded_record_get_field(erh,
               recfield->finfo.fnumber,
               isnull);
    break;
   }

  default:
   elog(ERROR, "unrecognized dtype: %d", datum->dtype);
 }
}
