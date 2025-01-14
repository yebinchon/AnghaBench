
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Jsonb ;
typedef scalar_t__ JsonPathExecResult ;
typedef int JsonPath ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int PG_FREE_IF_COPY (int *,int) ;
 int PG_GETARG_BOOL (int) ;
 int * PG_GETARG_JSONB_P (int) ;
 int * PG_GETARG_JSONPATH_P (int) ;
 int PG_NARGS () ;
 int PG_RETURN_BOOL (int) ;
 int PG_RETURN_NULL () ;
 scalar_t__ executeJsonPath (int *,int *,int *,int,int *,int) ;
 scalar_t__ jperIsError (scalar_t__) ;
 scalar_t__ jperOk ;

__attribute__((used)) static Datum
jsonb_path_exists_internal(FunctionCallInfo fcinfo, bool tz)
{
 Jsonb *jb = PG_GETARG_JSONB_P(0);
 JsonPath *jp = PG_GETARG_JSONPATH_P(1);
 JsonPathExecResult res;
 Jsonb *vars = ((void*)0);
 bool silent = 1;

 if (PG_NARGS() == 4)
 {
  vars = PG_GETARG_JSONB_P(2);
  silent = PG_GETARG_BOOL(3);
 }

 res = executeJsonPath(jp, vars, jb, !silent, ((void*)0), tz);

 PG_FREE_IF_COPY(jb, 0);
 PG_FREE_IF_COPY(jp, 1);

 if (jperIsError(res))
  PG_RETURN_NULL();

 PG_RETURN_BOOL(res == jperOk);
}
