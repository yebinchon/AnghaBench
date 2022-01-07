
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NthValueCtx {scalar_t__ pValue; } ;
typedef int sqlite3_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_value (int *,scalar_t__) ;
 int sqlite3_value_free (scalar_t__) ;

__attribute__((used)) static void first_valueFinalizeFunc(sqlite3_context *pCtx){
  struct NthValueCtx *p;
  p = (struct NthValueCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p && p->pValue ){
    sqlite3_result_value(pCtx, p->pValue);
    sqlite3_value_free(p->pValue);
    p->pValue = 0;
  }
}
