
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* prodesc; TYPE_1__* trigdata; int * attinmeta; TYPE_4__* ret_tupdesc; } ;
typedef TYPE_3__ pltcl_call_state ;
typedef TYPE_4__* TupleDesc ;
typedef int Tcl_Obj ;
typedef int Tcl_Interp ;
struct TYPE_15__ {scalar_t__ attgenerated; } ;
struct TYPE_14__ {int natts; } ;
struct TYPE_12__ {int fn_cxt; int domain_info; int result_typid; scalar_t__ fn_retisdomain; } ;
struct TYPE_11__ {int tg_relation; } ;
typedef int HeapTuple ;
typedef int AttInMetadata ;


 int BuildTupleFromCStrings (int *,char**) ;
 int ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_UNDEFINED_COLUMN ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 TYPE_4__* RelationGetDescr (int ) ;
 int SPI_ERROR_NOATTRIBUTE ;
 int SPI_fnumber (TYPE_4__*,char*) ;
 int Tcl_GetString (int *) ;
 TYPE_7__* TupleDescAttr (TYPE_4__*,int) ;
 int * TupleDescGetAttInMetadata (TYPE_4__*) ;
 int domain_check (int ,int,int ,int *,int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ palloc0 (int) ;
 scalar_t__ strcmp (char*,char*) ;
 char* utf_u2e (int ) ;

__attribute__((used)) static HeapTuple
pltcl_build_tuple_result(Tcl_Interp *interp, Tcl_Obj **kvObjv, int kvObjc,
       pltcl_call_state *call_state)
{
 HeapTuple tuple;
 TupleDesc tupdesc;
 AttInMetadata *attinmeta;
 char **values;
 int i;

 if (call_state->ret_tupdesc)
 {
  tupdesc = call_state->ret_tupdesc;
  attinmeta = call_state->attinmeta;
 }
 else if (call_state->trigdata)
 {
  tupdesc = RelationGetDescr(call_state->trigdata->tg_relation);
  attinmeta = TupleDescGetAttInMetadata(tupdesc);
 }
 else
 {
  elog(ERROR, "PL/Tcl function does not return a tuple");
  tupdesc = ((void*)0);
  attinmeta = ((void*)0);
 }

 values = (char **) palloc0(tupdesc->natts * sizeof(char *));

 if (kvObjc % 2 != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("column name/value list must have even number of elements")));

 for (i = 0; i < kvObjc; i += 2)
 {
  char *fieldName = utf_u2e(Tcl_GetString(kvObjv[i]));
  int attn = SPI_fnumber(tupdesc, fieldName);






  if (attn == SPI_ERROR_NOATTRIBUTE)
  {
   if (strcmp(fieldName, ".tupno") == 0)
    continue;
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_COLUMN),
      errmsg("column name/value list contains nonexistent column name \"%s\"",
       fieldName)));
  }

  if (attn <= 0)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot set system attribute \"%s\"",
       fieldName)));

  if (TupleDescAttr(tupdesc, attn - 1)->attgenerated)
   ereport(ERROR,
     (errcode(ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED),
      errmsg("cannot set generated column \"%s\"",
       fieldName)));

  values[attn - 1] = utf_u2e(Tcl_GetString(kvObjv[i + 1]));
 }

 tuple = BuildTupleFromCStrings(attinmeta, values);


 if (call_state->prodesc->fn_retisdomain)
  domain_check(HeapTupleGetDatum(tuple), 0,
      call_state->prodesc->result_typid,
      &call_state->prodesc->domain_info,
      call_state->prodesc->fn_cxt);

 return tuple;
}
