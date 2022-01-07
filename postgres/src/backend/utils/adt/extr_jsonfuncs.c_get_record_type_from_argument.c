
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ typcat; } ;
struct TYPE_7__ {int flinfo; } ;
struct TYPE_6__ {TYPE_3__ c; int fn_mcxt; int argtype; } ;
typedef TYPE_1__ PopulateRecordCache ;
typedef TYPE_2__* FunctionCallInfo ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 scalar_t__ TYPECAT_COMPOSITE ;
 scalar_t__ TYPECAT_COMPOSITE_DOMAIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int get_fn_expr_argtype (int ,int ) ;
 int prepare_column_cache (TYPE_3__*,int ,int,int ,int) ;

__attribute__((used)) static void
get_record_type_from_argument(FunctionCallInfo fcinfo,
         const char *funcname,
         PopulateRecordCache *cache)
{
 cache->argtype = get_fn_expr_argtype(fcinfo->flinfo, 0);
 prepare_column_cache(&cache->c,
       cache->argtype, -1,
       cache->fn_mcxt, 0);
 if (cache->c.typcat != TYPECAT_COMPOSITE &&
  cache->c.typcat != TYPECAT_COMPOSITE_DOMAIN)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),

     errmsg("first argument of %s must be a row type",
      funcname)));
}
