
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_8__ ;
typedef struct TYPE_45__ TYPE_7__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_32__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;
typedef struct TYPE_37__ TYPE_13__ ;


typedef TYPE_2__* TupleDesc ;
typedef int TupleConversionMap ;
struct TYPE_41__ {int tg_relation; int * tg_trigtuple; int * tg_newtuple; int tg_event; } ;
typedef TYPE_3__ TriggerData ;
struct TYPE_46__ {struct TYPE_46__* previous; TYPE_6__* arg; int callback; } ;
struct TYPE_45__ {scalar_t__ er_magic; } ;
struct TYPE_44__ {int retval; int rettype; scalar_t__ retisnull; scalar_t__ retisset; int * err_text; int * err_stmt; int datum_context; scalar_t__* datums; TYPE_3__* trigdata; } ;
struct TYPE_43__ {size_t new_varno; size_t old_varno; scalar_t__ action; } ;
struct TYPE_42__ {int erh; } ;
struct TYPE_40__ {scalar_t__ attgenerated; } ;
struct TYPE_39__ {int natts; TYPE_1__* constr; } ;
struct TYPE_38__ {scalar_t__ has_generated_stored; } ;
struct TYPE_37__ {int (* func_end ) (TYPE_6__*,TYPE_5__*) ;int (* func_beg ) (TYPE_6__*,TYPE_5__*) ;} ;
typedef int PLpgSQL_stmt ;
typedef TYPE_4__ PLpgSQL_rec ;
typedef TYPE_5__ PLpgSQL_function ;
typedef TYPE_6__ PLpgSQL_execstate ;
typedef int HeapTupleData ;
typedef int * HeapTuple ;
typedef TYPE_7__ ExpandedRecordHeader ;
typedef TYPE_8__ ErrorContextCallback ;
typedef int Datum ;


 scalar_t__ ATTRIBUTE_GENERATED_STORED ;
 int Assert (int) ;
 scalar_t__ DatumGetEOHP (int ) ;
 int DatumGetPointer (int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT ;
 int ERROR ;
 scalar_t__ ER_MAGIC ;
 int PLPGSQL_RC_RETURN ;
 TYPE_2__* RelationGetDescr (int ) ;
 int ReleaseTupleDesc (TYPE_2__*) ;
 int * SPI_copytuple (int *) ;
 int SPI_register_trigger_data (TYPE_3__*) ;
 scalar_t__ TRIGGER_FIRED_BEFORE (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_DELETE (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_INSERT (int ) ;
 scalar_t__ TRIGGER_FIRED_BY_UPDATE (int ) ;
 int TRIGGER_FIRED_FOR_ROW (int ) ;
 TYPE_32__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL_EXPANDED (int ) ;
 int * convert_tuples_by_position (TYPE_2__*,TYPE_2__*,void*) ;
 int copy_plpgsql_datums (TYPE_6__*,TYPE_5__*) ;
 TYPE_2__* deconstruct_composite_datum (int ,int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_8__* error_context_stack ;
 int exec_eval_cleanup (TYPE_6__*) ;
 int exec_set_found (TYPE_6__*,int) ;
 int exec_stmt (TYPE_6__*,int *) ;
 int * execute_attr_map_tuple (int *,int *) ;
 TYPE_2__* expanded_record_get_tupdesc (TYPE_7__*) ;
 int * expanded_record_get_tuple (TYPE_7__*) ;
 int expanded_record_set_field_internal (int ,int,int ,int,int,int) ;
 int expanded_record_set_tuple (int ,int *,int,int) ;
 void* gettext_noop (char*) ;
 int make_expanded_record_from_exprecord (int ,int ) ;
 int make_expanded_record_from_tupdesc (TYPE_2__*,int ) ;
 int plpgsql_destroy_econtext (TYPE_6__*) ;
 int plpgsql_estate_setup (TYPE_6__*,TYPE_5__*,int *,int *) ;
 int plpgsql_exec_error_callback ;
 TYPE_13__** plpgsql_plugin_ptr ;
 int stub1 (TYPE_6__*,TYPE_5__*) ;
 int stub2 (TYPE_6__*,TYPE_5__*) ;
 int * type_is_rowtype (int ) ;

HeapTuple
plpgsql_exec_trigger(PLpgSQL_function *func,
      TriggerData *trigdata)
{
 PLpgSQL_execstate estate;
 ErrorContextCallback plerrcontext;
 int rc;
 TupleDesc tupdesc;
 PLpgSQL_rec *rec_new,
      *rec_old;
 HeapTuple rettup;




 plpgsql_estate_setup(&estate, func, ((void*)0), ((void*)0));
 estate.trigdata = trigdata;




 plerrcontext.callback = plpgsql_exec_error_callback;
 plerrcontext.arg = &estate;
 plerrcontext.previous = error_context_stack;
 error_context_stack = &plerrcontext;




 estate.err_text = gettext_noop("during initialization of execution state");
 copy_plpgsql_datums(&estate, func);
 tupdesc = RelationGetDescr(trigdata->tg_relation);

 rec_new = (PLpgSQL_rec *) (estate.datums[func->new_varno]);
 rec_old = (PLpgSQL_rec *) (estate.datums[func->old_varno]);

 rec_new->erh = make_expanded_record_from_tupdesc(tupdesc,
              estate.datum_context);
 rec_old->erh = make_expanded_record_from_exprecord(rec_new->erh,
                estate.datum_context);

 if (!TRIGGER_FIRED_FOR_ROW(trigdata->tg_event))
 {



 }
 else if (TRIGGER_FIRED_BY_INSERT(trigdata->tg_event))
 {
  expanded_record_set_tuple(rec_new->erh, trigdata->tg_trigtuple,
          0, 0);
 }
 else if (TRIGGER_FIRED_BY_UPDATE(trigdata->tg_event))
 {
  expanded_record_set_tuple(rec_new->erh, trigdata->tg_newtuple,
          0, 0);
  expanded_record_set_tuple(rec_old->erh, trigdata->tg_trigtuple,
          0, 0);
  if (tupdesc->constr && tupdesc->constr->has_generated_stored &&
   TRIGGER_FIRED_BEFORE(trigdata->tg_event))
  {
   for (int i = 0; i < tupdesc->natts; i++)
    if (TupleDescAttr(tupdesc, i)->attgenerated == ATTRIBUTE_GENERATED_STORED)
     expanded_record_set_field_internal(rec_new->erh,
                i + 1,
                (Datum) 0,
                1,
                0, 0);
  }
 }
 else if (TRIGGER_FIRED_BY_DELETE(trigdata->tg_event))
 {
  expanded_record_set_tuple(rec_old->erh, trigdata->tg_trigtuple,
          0, 0);
 }
 else
  elog(ERROR, "unrecognized trigger action: not INSERT, DELETE, or UPDATE");


 rc = SPI_register_trigger_data(trigdata);
 Assert(rc >= 0);

 estate.err_text = gettext_noop("during function entry");




 exec_set_found(&estate, 0);




 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_beg)
  ((*plpgsql_plugin_ptr)->func_beg) (&estate, func);




 estate.err_text = ((void*)0);
 estate.err_stmt = (PLpgSQL_stmt *) (func->action);
 rc = exec_stmt(&estate, (PLpgSQL_stmt *) func->action);
 if (rc != PLPGSQL_RC_RETURN)
 {
  estate.err_stmt = ((void*)0);
  estate.err_text = ((void*)0);
  ereport(ERROR,
    (errcode(ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT),
     errmsg("control reached end of trigger procedure without RETURN")));
 }

 estate.err_stmt = ((void*)0);
 estate.err_text = gettext_noop("during function exit");

 if (estate.retisset)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("trigger procedure cannot return a set")));
 if (estate.retisnull || !TRIGGER_FIRED_FOR_ROW(trigdata->tg_event))
  rettup = ((void*)0);
 else
 {
  TupleDesc retdesc;
  TupleConversionMap *tupmap;


  Assert(type_is_rowtype(estate.rettype));


  if (VARATT_IS_EXTERNAL_EXPANDED(DatumGetPointer(estate.retval)))
  {
   ExpandedRecordHeader *erh = (ExpandedRecordHeader *) DatumGetEOHP(estate.retval);

   Assert(erh->er_magic == ER_MAGIC);


   rettup = expanded_record_get_tuple(erh);
   Assert(rettup);
   retdesc = expanded_record_get_tupdesc(erh);

   if (retdesc != RelationGetDescr(trigdata->tg_relation))
   {

    tupmap = convert_tuples_by_position(retdesc,
             RelationGetDescr(trigdata->tg_relation),
             gettext_noop("returned row structure does not match the structure of the triggering table"));

    if (tupmap)
     rettup = execute_attr_map_tuple(rettup, tupmap);

   }







   if (rettup != trigdata->tg_newtuple &&
    rettup != trigdata->tg_trigtuple)
    rettup = SPI_copytuple(rettup);
  }
  else
  {

   HeapTupleData tmptup;

   retdesc = deconstruct_composite_datum(estate.retval, &tmptup);
   rettup = &tmptup;


   tupmap = convert_tuples_by_position(retdesc,
            RelationGetDescr(trigdata->tg_relation),
            gettext_noop("returned row structure does not match the structure of the triggering table"));

   if (tupmap)
    rettup = execute_attr_map_tuple(rettup, tupmap);

   ReleaseTupleDesc(retdesc);



   rettup = SPI_copytuple(rettup);
  }
 }




 if (*plpgsql_plugin_ptr && (*plpgsql_plugin_ptr)->func_end)
  ((*plpgsql_plugin_ptr)->func_end) (&estate, func);


 plpgsql_destroy_econtext(&estate);
 exec_eval_cleanup(&estate);





 error_context_stack = plerrcontext.previous;




 return rettup;
}
