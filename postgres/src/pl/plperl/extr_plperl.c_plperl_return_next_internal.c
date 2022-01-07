
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int result_typioparam; int result_in_func; scalar_t__ result_oid; scalar_t__ fn_retistuple; int fn_retisset; } ;
typedef TYPE_2__ plperl_proc_desc ;
typedef scalar_t__ TypeFuncClass ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_16__ {scalar_t__ tmp_cxt; scalar_t__ ret_tdesc; scalar_t__ tuple_store; int cdomain_info; int cdomain_oid; TYPE_5__* fcinfo; TYPE_2__* prodesc; } ;
struct TYPE_15__ {scalar_t__ resultinfo; } ;
struct TYPE_14__ {int allowedModes; TYPE_1__* econtext; TYPE_3__* expectedDesc; } ;
struct TYPE_13__ {int natts; } ;
struct TYPE_11__ {scalar_t__ ecxt_per_query_memory; } ;
typedef int SV ;
typedef TYPE_4__ ReturnSetInfo ;
typedef int Oid ;
typedef scalar_t__ MemoryContext ;
typedef int HeapTuple ;
typedef int HV ;
typedef TYPE_5__* FunctionCallInfo ;
typedef int Datum ;


 int ALLOCSET_DEFAULT_SIZES ;
 scalar_t__ AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 scalar_t__ CreateTupleDescCopy (TYPE_3__*) ;
 int CurrentMemoryContext ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 int MemoryContextReset (scalar_t__) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 int SFRM_Materialize_Random ;
 scalar_t__ SVt_PVHV ;
 scalar_t__ SvOK (int *) ;
 scalar_t__ SvROK (int *) ;
 scalar_t__ SvRV (int *) ;
 scalar_t__ SvTYPE (scalar_t__) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ;
 TYPE_9__* current_call_data ;
 int domain_check (int ,int,int ,int *,scalar_t__) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ get_call_result_type (TYPE_5__*,int *,TYPE_3__**) ;
 int plperl_build_tuple_result (int *,scalar_t__) ;
 int plperl_sv_to_datum (int *,scalar_t__,int,TYPE_5__*,int *,int ,int*) ;
 scalar_t__ tuplestore_begin_heap (int,int,int ) ;
 int tuplestore_puttuple (scalar_t__,int ) ;
 int tuplestore_putvalues (scalar_t__,scalar_t__,int *,int*) ;
 int work_mem ;

__attribute__((used)) static void
plperl_return_next_internal(SV *sv)
{
 plperl_proc_desc *prodesc;
 FunctionCallInfo fcinfo;
 ReturnSetInfo *rsi;
 MemoryContext old_cxt;

 if (!sv)
  return;

 prodesc = current_call_data->prodesc;
 fcinfo = current_call_data->fcinfo;
 rsi = (ReturnSetInfo *) fcinfo->resultinfo;

 if (!prodesc->fn_retisset)
  ereport(ERROR,
    (errcode(ERRCODE_SYNTAX_ERROR),
     errmsg("cannot use return_next in a non-SETOF function")));

 if (!current_call_data->ret_tdesc)
 {
  TupleDesc tupdesc;

  Assert(!current_call_data->tuple_store);






  if (prodesc->fn_retistuple)
  {
   TypeFuncClass funcclass;
   Oid typid;

   funcclass = get_call_result_type(fcinfo, &typid, &tupdesc);
   if (funcclass != TYPEFUNC_COMPOSITE &&
    funcclass != TYPEFUNC_COMPOSITE_DOMAIN)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("function returning record called in context "
        "that cannot accept type record")));

   if (funcclass == TYPEFUNC_COMPOSITE_DOMAIN)
    current_call_data->cdomain_oid = typid;
  }
  else
  {
   tupdesc = rsi->expectedDesc;

   if (tupdesc == ((void*)0) || tupdesc->natts != 1)
    elog(ERROR, "expected single-column result descriptor for non-composite SETOF result");
  }





  old_cxt = MemoryContextSwitchTo(rsi->econtext->ecxt_per_query_memory);

  current_call_data->ret_tdesc = CreateTupleDescCopy(tupdesc);
  current_call_data->tuple_store =
   tuplestore_begin_heap(rsi->allowedModes & SFRM_Materialize_Random,
          0, work_mem);

  MemoryContextSwitchTo(old_cxt);
 }







 if (!current_call_data->tmp_cxt)
 {
  current_call_data->tmp_cxt =
   AllocSetContextCreate(CurrentMemoryContext,
          "PL/Perl return_next temporary cxt",
          ALLOCSET_DEFAULT_SIZES);
 }

 old_cxt = MemoryContextSwitchTo(current_call_data->tmp_cxt);

 if (prodesc->fn_retistuple)
 {
  HeapTuple tuple;

  if (!(SvOK(sv) && SvROK(sv) && SvTYPE(SvRV(sv)) == SVt_PVHV))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("SETOF-composite-returning PL/Perl function "
       "must call return_next with reference to hash")));

  tuple = plperl_build_tuple_result((HV *) SvRV(sv),
            current_call_data->ret_tdesc);

  if (OidIsValid(current_call_data->cdomain_oid))
   domain_check(HeapTupleGetDatum(tuple), 0,
       current_call_data->cdomain_oid,
       &current_call_data->cdomain_info,
       rsi->econtext->ecxt_per_query_memory);

  tuplestore_puttuple(current_call_data->tuple_store, tuple);
 }
 else if (prodesc->result_oid)
 {
  Datum ret[1];
  bool isNull[1];

  ret[0] = plperl_sv_to_datum(sv,
         prodesc->result_oid,
         -1,
         fcinfo,
         &prodesc->result_in_func,
         prodesc->result_typioparam,
         &isNull[0]);

  tuplestore_putvalues(current_call_data->tuple_store,
        current_call_data->ret_tdesc,
        ret, isNull);
 }

 MemoryContextSwitchTo(old_cxt);
 MemoryContextReset(current_call_data->tmp_cxt);
}
