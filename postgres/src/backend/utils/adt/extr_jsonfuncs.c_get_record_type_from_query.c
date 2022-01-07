
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* TupleDesc ;
struct TYPE_10__ {int base_typmod; int base_typid; int tupdesc; } ;
struct TYPE_11__ {TYPE_1__ composite; } ;
struct TYPE_12__ {TYPE_2__ io; } ;
struct TYPE_14__ {TYPE_3__ c; int fn_mcxt; int argtype; } ;
struct TYPE_13__ {int tdtypmod; int tdtypeid; } ;
typedef TYPE_5__ PopulateRecordCache ;
typedef int MemoryContext ;
typedef int FunctionCallInfo ;


 int Assert (TYPE_4__*) ;
 int CreateTupleDescCopy (TYPE_4__*) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int FreeTupleDesc (int ) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*) ;
 scalar_t__ get_call_result_type (int ,int *,TYPE_4__**) ;

__attribute__((used)) static void
get_record_type_from_query(FunctionCallInfo fcinfo,
         const char *funcname,
         PopulateRecordCache *cache)
{
 TupleDesc tupdesc;
 MemoryContext old_cxt;

 if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),

     errmsg("could not determine row type for result of %s",
      funcname),
     errhint("Provide a non-null record argument, "
       "or call the function in the FROM clause "
       "using a column definition list.")));

 Assert(tupdesc);
 cache->argtype = tupdesc->tdtypeid;


 if (cache->c.io.composite.tupdesc)
  FreeTupleDesc(cache->c.io.composite.tupdesc);


 old_cxt = MemoryContextSwitchTo(cache->fn_mcxt);
 cache->c.io.composite.tupdesc = CreateTupleDescCopy(tupdesc);
 cache->c.io.composite.base_typid = tupdesc->tdtypeid;
 cache->c.io.composite.base_typmod = tupdesc->tdtypmod;
 MemoryContextSwitchTo(old_cxt);
}
