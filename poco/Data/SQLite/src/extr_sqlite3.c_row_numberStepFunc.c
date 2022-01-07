
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef int sqlite3_context ;
typedef int i64 ;


 int UNUSED_PARAMETER (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;

__attribute__((used)) static void row_numberStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  i64 *p = (i64*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ) (*p)++;
  UNUSED_PARAMETER(nArg);
  UNUSED_PARAMETER(apArg);
}
