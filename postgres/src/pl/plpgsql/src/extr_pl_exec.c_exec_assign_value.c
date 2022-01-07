
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_14__ ;


typedef void* int32 ;
typedef void* int16 ;
struct TYPE_33__ {int er_tupdesc_id; } ;
struct TYPE_32__ {size_t arrayparentno; void* parenttypoid; void* parenttypmod; int elemtypbyval; char elemtypalign; void* arraytypmod; void* arraytypoid; void* elemtyplen; void* arraytyplen; void* elemtypoid; int * subscript; } ;
struct TYPE_31__ {int dtype; } ;
struct TYPE_30__ {int * eval_tuptable; TYPE_6__** datums; int atomic; int datum_context; } ;
struct TYPE_29__ {int refname; TYPE_8__* erh; int notnull; } ;
struct TYPE_25__ {int fnumber; void* ftypmod; void* ftypeid; } ;
struct TYPE_28__ {size_t recparentno; TYPE_14__ finfo; int fieldname; int rectupledescid; } ;
struct TYPE_27__ {int promise; TYPE_1__* datatype; int isnull; int value; int refname; int notnull; } ;
struct TYPE_26__ {int typbyval; int typlen; int typisarray; void* atttypmod; void* typoid; } ;
typedef int SPITupleTable ;
typedef int PLpgSQL_variable ;
typedef TYPE_2__ PLpgSQL_var ;
typedef int PLpgSQL_row ;
typedef TYPE_3__ PLpgSQL_recfield ;
typedef TYPE_4__ PLpgSQL_rec ;
typedef int PLpgSQL_expr ;
typedef TYPE_5__ PLpgSQL_execstate ;
typedef TYPE_6__ PLpgSQL_datum ;
typedef TYPE_7__ PLpgSQL_arrayelem ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef TYPE_8__ ExpandedRecordHeader ;
typedef int Datum ;


 int Assert (int ) ;
 int DatumGetPointer (int ) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int MAXDIM ;
 int MemoryContextSwitchTo (int ) ;
 int OidIsValid (void*) ;






 int PLPGSQL_PROMISE_NONE ;
 int PointerGetDatum (int ) ;
 int SPI_freetuptable (int *) ;
 int VARATT_IS_EXTERNAL_EXPANDED_RW (int ) ;
 int array_set_element (int ,int,int*,int ,int,void*,void*,int,char) ;
 int assign_simple_var (TYPE_5__*,TYPE_2__*,int ,int,int) ;
 int construct_empty_array (void*) ;
 int datumTransfer (int ,int,int ) ;
 int elog (int ,char*,int const) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int exec_cast_value (TYPE_5__*,int ,int*,void*,void*,void*,void*) ;
 int exec_eval_datum (TYPE_5__*,TYPE_6__*,void**,void**,int *,int*) ;
 int exec_eval_integer (TYPE_5__*,int *,int*) ;
 int exec_move_row (TYPE_5__*,int *,int *,int *) ;
 int exec_move_row_from_datum (TYPE_5__*,int *,int ) ;
 int expand_array (int ,int ,int *) ;
 int expanded_record_lookup_field (TYPE_8__*,int ,TYPE_14__*) ;
 int expanded_record_set_field (TYPE_8__*,int ,int ,int,int) ;
 void* getBaseTypeAndTypmod (void*,void**) ;
 void* get_element_type (void*) ;
 int get_eval_mcontext (TYPE_5__*) ;
 void* get_typlen (void*) ;
 int get_typlenbyvalalign (void*,void**,int*,char*) ;
 int instantiate_empty_record_variable (TYPE_5__*,TYPE_4__*) ;
 int type_is_rowtype (void*) ;
 int unlikely (int) ;

__attribute__((used)) static void
exec_assign_value(PLpgSQL_execstate *estate,
      PLpgSQL_datum *target,
      Datum value, bool isNull,
      Oid valtype, int32 valtypmod)
{
 switch (target->dtype)
 {
  case 128:
  case 132:
   {



    PLpgSQL_var *var = (PLpgSQL_var *) target;
    Datum newvalue;

    newvalue = exec_cast_value(estate,
             value,
             &isNull,
             valtype,
             valtypmod,
             var->datatype->typoid,
             var->datatype->atttypmod);

    if (isNull && var->notnull)
     ereport(ERROR,
       (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
        errmsg("null value cannot be assigned to variable \"%s\" declared NOT NULL",
         var->refname)));
    if (!var->datatype->typbyval && !isNull)
    {
     if (var->datatype->typisarray &&
      !VARATT_IS_EXTERNAL_EXPANDED_RW(DatumGetPointer(newvalue)))
     {

      newvalue = expand_array(newvalue,
            estate->datum_context,
            ((void*)0));
     }
     else
     {

      newvalue = datumTransfer(newvalue,
             0,
             var->datatype->typlen);
     }
    }
    if (var->value != newvalue || var->isnull || isNull)
     assign_simple_var(estate, var, newvalue, isNull,
           (!var->datatype->typbyval && !isNull));
    else
     var->promise = PLPGSQL_PROMISE_NONE;
    break;
   }

  case 129:
   {



    PLpgSQL_row *row = (PLpgSQL_row *) target;

    if (isNull)
    {

     exec_move_row(estate, (PLpgSQL_variable *) row,
          ((void*)0), ((void*)0));
    }
    else
    {

     if (!type_is_rowtype(valtype))
      ereport(ERROR,
        (errcode(ERRCODE_DATATYPE_MISMATCH),
         errmsg("cannot assign non-composite value to a row variable")));
     exec_move_row_from_datum(estate, (PLpgSQL_variable *) row,
            value);
    }
    break;
   }

  case 131:
   {



    PLpgSQL_rec *rec = (PLpgSQL_rec *) target;

    if (isNull)
    {
     if (rec->notnull)
      ereport(ERROR,
        (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
         errmsg("null value cannot be assigned to variable \"%s\" declared NOT NULL",
          rec->refname)));


     exec_move_row(estate, (PLpgSQL_variable *) rec,
          ((void*)0), ((void*)0));
    }
    else
    {

     if (!type_is_rowtype(valtype))
      ereport(ERROR,
        (errcode(ERRCODE_DATATYPE_MISMATCH),
         errmsg("cannot assign non-composite value to a record variable")));
     exec_move_row_from_datum(estate, (PLpgSQL_variable *) rec,
            value);
    }
    break;
   }

  case 130:
   {



    PLpgSQL_recfield *recfield = (PLpgSQL_recfield *) target;
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


    if (recfield->finfo.fnumber <= 0)
     ereport(ERROR,
       (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("cannot assign to system column \"%s\"",
         recfield->fieldname)));


    value = exec_cast_value(estate,
          value,
          &isNull,
          valtype,
          valtypmod,
          recfield->finfo.ftypeid,
          recfield->finfo.ftypmod);


    expanded_record_set_field(erh, recfield->finfo.fnumber,
            value, isNull, !estate->atomic);
    break;
   }

  case 133:
   {



    PLpgSQL_arrayelem *arrayelem;
    int nsubscripts;
    int i;
    PLpgSQL_expr *subscripts[MAXDIM];
    int subscriptvals[MAXDIM];
    Datum oldarraydatum,
       newarraydatum,
       coerced_value;
    bool oldarrayisnull;
    Oid parenttypoid;
    int32 parenttypmod;
    SPITupleTable *save_eval_tuptable;
    MemoryContext oldcontext;
    save_eval_tuptable = estate->eval_tuptable;
    estate->eval_tuptable = ((void*)0);
    nsubscripts = 0;
    do
    {
     arrayelem = (PLpgSQL_arrayelem *) target;
     if (nsubscripts >= MAXDIM)
      ereport(ERROR,
        (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
         errmsg("number of array dimensions (%d) exceeds the maximum allowed (%d)",
          nsubscripts + 1, MAXDIM)));
     subscripts[nsubscripts++] = arrayelem->subscript;
     target = estate->datums[arrayelem->arrayparentno];
    } while (target->dtype == 133);


    exec_eval_datum(estate, target,
        &parenttypoid, &parenttypmod,
        &oldarraydatum, &oldarrayisnull);


    if (arrayelem->parenttypoid != parenttypoid ||
     arrayelem->parenttypmod != parenttypmod)
    {
     Oid arraytypoid;
     int32 arraytypmod = parenttypmod;
     int16 arraytyplen;
     Oid elemtypoid;
     int16 elemtyplen;
     bool elemtypbyval;
     char elemtypalign;


     arraytypoid = getBaseTypeAndTypmod(parenttypoid,
                &arraytypmod);


     elemtypoid = get_element_type(arraytypoid);
     if (!OidIsValid(elemtypoid))
      ereport(ERROR,
        (errcode(ERRCODE_DATATYPE_MISMATCH),
         errmsg("subscripted object is not an array")));


     arraytyplen = get_typlen(arraytypoid);

     get_typlenbyvalalign(elemtypoid,
           &elemtyplen,
           &elemtypbyval,
           &elemtypalign);


     arrayelem->parenttypoid = parenttypoid;
     arrayelem->parenttypmod = parenttypmod;
     arrayelem->arraytypoid = arraytypoid;
     arrayelem->arraytypmod = arraytypmod;
     arrayelem->arraytyplen = arraytyplen;
     arrayelem->elemtypoid = elemtypoid;
     arrayelem->elemtyplen = elemtyplen;
     arrayelem->elemtypbyval = elemtypbyval;
     arrayelem->elemtypalign = elemtypalign;
    }






    for (i = 0; i < nsubscripts; i++)
    {
     bool subisnull;

     subscriptvals[i] =
      exec_eval_integer(estate,
            subscripts[nsubscripts - 1 - i],
            &subisnull);
     if (subisnull)
      ereport(ERROR,
        (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
         errmsg("array subscript in assignment must not be null")));
     if (estate->eval_tuptable != ((void*)0))
      SPI_freetuptable(estate->eval_tuptable);
     estate->eval_tuptable = ((void*)0);
    }


    Assert(estate->eval_tuptable == ((void*)0));
    estate->eval_tuptable = save_eval_tuptable;


    coerced_value = exec_cast_value(estate,
            value,
            &isNull,
            valtype,
            valtypmod,
            arrayelem->elemtypoid,
            arrayelem->arraytypmod);
    if (arrayelem->arraytyplen > 0 &&
     (oldarrayisnull || isNull))
     return;


    oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));

    if (oldarrayisnull)
     oldarraydatum = PointerGetDatum(construct_empty_array(arrayelem->elemtypoid));




    newarraydatum = array_set_element(oldarraydatum,
              nsubscripts,
              subscriptvals,
              coerced_value,
              isNull,
              arrayelem->arraytyplen,
              arrayelem->elemtyplen,
              arrayelem->elemtypbyval,
              arrayelem->elemtypalign);

    MemoryContextSwitchTo(oldcontext);







    exec_assign_value(estate, target,
          newarraydatum,
          0,
          arrayelem->arraytypoid,
          arrayelem->arraytypmod);
    break;
   }

  default:
   elog(ERROR, "unrecognized dtype: %d", target->dtype);
 }
}
