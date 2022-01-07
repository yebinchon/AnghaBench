
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_14__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int text ;
struct TYPE_30__ {scalar_t__ len; int * data; } ;
struct TYPE_31__ {TYPE_4__ binary; } ;
struct TYPE_35__ {TYPE_5__ val; int type; } ;
struct TYPE_26__ {int base_typmod; int base_typid; } ;
struct TYPE_32__ {TYPE_14__ composite; } ;
struct TYPE_33__ {TYPE_6__ io; } ;
struct TYPE_34__ {scalar_t__ argtype; TYPE_7__ c; int fn_mcxt; } ;
struct TYPE_28__ {int type; int len; int str; } ;
struct TYPE_29__ {TYPE_9__* jsonb; TYPE_2__ json; } ;
struct TYPE_27__ {TYPE_8__* fn_extra; int fn_mcxt; } ;
struct TYPE_25__ {TYPE_1__* flinfo; } ;
struct TYPE_24__ {int is_json; TYPE_3__ val; int member_0; } ;
struct TYPE_23__ {int root; } ;
typedef TYPE_8__ PopulateRecordCache ;
typedef int MemoryContext ;
typedef TYPE_9__ JsonbValue ;
typedef TYPE_10__ Jsonb ;
typedef TYPE_11__ JsValue ;
typedef int * HeapTupleHeader ;
typedef TYPE_12__* FunctionCallInfo ;
typedef int Datum ;


 int Assert (int) ;
 int HeapTupleHeaderGetTypMod (int *) ;
 int HeapTupleHeaderGetTypeId (int *) ;
 int JSON_TOKEN_INVALID ;
 TYPE_8__* MemoryContextAllocZero (int ,int) ;
 scalar_t__ PG_ARGISNULL (int) ;
 int * PG_GETARG_HEAPTUPLEHEADER (int ) ;
 TYPE_10__* PG_GETARG_JSONB_P (int) ;
 int * PG_GETARG_TEXT_PP (int) ;
 int PG_RETURN_DATUM (int ) ;
 int PG_RETURN_NULL () ;
 int PG_RETURN_POINTER (int *) ;
 scalar_t__ RECORDOID ;
 int VARDATA_ANY (int *) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (TYPE_10__*) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int get_record_type_from_argument (TYPE_12__*,char const*,TYPE_8__*) ;
 int get_record_type_from_query (TYPE_12__*,char const*,TYPE_8__*) ;
 int jbvBinary ;
 int populate_composite (TYPE_14__*,scalar_t__,int *,int ,int *,TYPE_11__*,int) ;

__attribute__((used)) static Datum
populate_record_worker(FunctionCallInfo fcinfo, const char *funcname,
        bool is_json, bool have_record_arg)
{
 int json_arg_num = have_record_arg ? 1 : 0;
 JsValue jsv = {0};
 HeapTupleHeader rec;
 Datum rettuple;
 JsonbValue jbv;
 MemoryContext fnmcxt = fcinfo->flinfo->fn_mcxt;
 PopulateRecordCache *cache = fcinfo->flinfo->fn_extra;






 if (!cache)
 {
  fcinfo->flinfo->fn_extra = cache =
   MemoryContextAllocZero(fnmcxt, sizeof(*cache));
  cache->fn_mcxt = fnmcxt;

  if (have_record_arg)
   get_record_type_from_argument(fcinfo, funcname, cache);
  else
   get_record_type_from_query(fcinfo, funcname, cache);
 }


 if (!have_record_arg)
  rec = ((void*)0);
 else if (!PG_ARGISNULL(0))
 {
  rec = PG_GETARG_HEAPTUPLEHEADER(0);





  if (cache->argtype == RECORDOID)
  {
   cache->c.io.composite.base_typid = HeapTupleHeaderGetTypeId(rec);
   cache->c.io.composite.base_typmod = HeapTupleHeaderGetTypMod(rec);
  }
 }
 else
 {
  rec = ((void*)0);





  if (cache->argtype == RECORDOID)
  {
   get_record_type_from_query(fcinfo, funcname, cache);

   Assert(cache->argtype == RECORDOID);
  }
 }


 if (PG_ARGISNULL(json_arg_num))
 {
  if (rec)
   PG_RETURN_POINTER(rec);
  else
   PG_RETURN_NULL();
 }

 jsv.is_json = is_json;

 if (is_json)
 {
  text *json = PG_GETARG_TEXT_PP(json_arg_num);

  jsv.val.json.str = VARDATA_ANY(json);
  jsv.val.json.len = VARSIZE_ANY_EXHDR(json);
  jsv.val.json.type = JSON_TOKEN_INVALID;

 }
 else
 {
  Jsonb *jb = PG_GETARG_JSONB_P(json_arg_num);

  jsv.val.jsonb = &jbv;


  jbv.type = jbvBinary;
  jbv.val.binary.data = &jb->root;
  jbv.val.binary.len = VARSIZE(jb) - VARHDRSZ;
 }

 rettuple = populate_composite(&cache->c.io.composite, cache->argtype,
          ((void*)0), fnmcxt, rec, &jsv, 0);

 PG_RETURN_DATUM(rettuple);
}
