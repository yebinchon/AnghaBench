
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef int Jsonb ;
typedef TYPE_1__ JsonValueList ;
typedef int JsonPath ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int JsonValueListHead (TYPE_1__*) ;
 int JsonValueListLength (TYPE_1__*) ;
 int JsonbValueToJsonb (int ) ;
 int PG_GETARG_BOOL (int) ;
 int * PG_GETARG_JSONB_P (int) ;
 int * PG_GETARG_JSONPATH_P (int) ;
 int PG_RETURN_JSONB_P (int ) ;
 int PG_RETURN_NULL () ;
 int executeJsonPath (int *,int *,int *,int,TYPE_1__*,int) ;

__attribute__((used)) static Datum
jsonb_path_query_first_internal(FunctionCallInfo fcinfo, bool tz)
{
 Jsonb *jb = PG_GETARG_JSONB_P(0);
 JsonPath *jp = PG_GETARG_JSONPATH_P(1);
 JsonValueList found = {0};
 Jsonb *vars = PG_GETARG_JSONB_P(2);
 bool silent = PG_GETARG_BOOL(3);

 (void) executeJsonPath(jp, vars, jb, !silent, &found, tz);

 if (JsonValueListLength(&found) >= 1)
  PG_RETURN_JSONB_P(JsonbValueToJsonb(JsonValueListHead(&found)));
 else
  PG_RETURN_NULL();
}
