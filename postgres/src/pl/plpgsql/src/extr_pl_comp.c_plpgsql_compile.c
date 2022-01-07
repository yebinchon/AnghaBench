
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* flinfo; } ;
struct TYPE_20__ {int t_self; int t_data; } ;
struct TYPE_19__ {scalar_t__ fn_xmin; scalar_t__ use_count; int fn_tid; } ;
struct TYPE_18__ {void* fn_extra; int fn_oid; } ;
typedef TYPE_2__ PLpgSQL_function ;
typedef int PLpgSQL_func_hashkey ;
typedef int Oid ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* FunctionCallInfo ;
typedef scalar_t__ Form_pg_proc ;


 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 scalar_t__ HeapTupleHeaderGetRawXmin (int ) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (TYPE_3__*) ;
 TYPE_3__* SearchSysCache1 (int ,int ) ;
 int compute_function_hashkey (TYPE_4__*,scalar_t__,int *,int) ;
 int delete_function (TYPE_2__*) ;
 TYPE_2__* do_compile (TYPE_4__*,TYPE_3__*,TYPE_2__*,int *,int) ;
 int elog (int ,char*,int ) ;
 TYPE_2__* plpgsql_HashTableLookup (int *) ;

PLpgSQL_function *
plpgsql_compile(FunctionCallInfo fcinfo, bool forValidator)
{
 Oid funcOid = fcinfo->flinfo->fn_oid;
 HeapTuple procTup;
 Form_pg_proc procStruct;
 PLpgSQL_function *function;
 PLpgSQL_func_hashkey hashkey;
 bool function_valid = 0;
 bool hashkey_valid = 0;




 procTup = SearchSysCache1(PROCOID, ObjectIdGetDatum(funcOid));
 if (!HeapTupleIsValid(procTup))
  elog(ERROR, "cache lookup failed for function %u", funcOid);
 procStruct = (Form_pg_proc) GETSTRUCT(procTup);





 function = (PLpgSQL_function *) fcinfo->flinfo->fn_extra;

recheck:
 if (!function)
 {

  compute_function_hashkey(fcinfo, procStruct, &hashkey, forValidator);
  hashkey_valid = 1;


  function = plpgsql_HashTableLookup(&hashkey);
 }

 if (function)
 {

  if (function->fn_xmin == HeapTupleHeaderGetRawXmin(procTup->t_data) &&
   ItemPointerEquals(&function->fn_tid, &procTup->t_self))
   function_valid = 1;
  else
  {




   delete_function(function);
   if (function->use_count != 0)
   {
    function = ((void*)0);
    if (!hashkey_valid)
     goto recheck;
   }
  }
 }




 if (!function_valid)
 {




  if (!hashkey_valid)
   compute_function_hashkey(fcinfo, procStruct, &hashkey,
          forValidator);




  function = do_compile(fcinfo, procTup, function,
         &hashkey, forValidator);
 }

 ReleaseSysCache(procTup);




 fcinfo->flinfo->fn_extra = (void *) function;




 return function;
}
