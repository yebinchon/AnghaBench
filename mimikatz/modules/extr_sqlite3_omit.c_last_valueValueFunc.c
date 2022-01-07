
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct LastValueCtx {scalar_t__ pVal; } ;
typedef int sqlite3_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_value (int *,scalar_t__) ;

__attribute__((used)) static void last_valueValueFunc(sqlite3_context *pCtx){
  struct LastValueCtx *p;
  p = (struct LastValueCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p && p->pVal ){
    sqlite3_result_value(pCtx, p->pVal);
  }
}
