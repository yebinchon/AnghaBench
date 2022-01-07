
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct NtileCtx {scalar_t__ nTotal; scalar_t__ nParam; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_error (int *,char*,int) ;
 scalar_t__ sqlite3_value_int64 (int *) ;

__attribute__((used)) static void ntileStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct NtileCtx *p;
  assert( nArg==1 ); UNUSED_PARAMETER(nArg);
  p = (struct NtileCtx*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ){
    if( p->nTotal==0 ){
      p->nParam = sqlite3_value_int64(apArg[0]);
      if( p->nParam<=0 ){
        sqlite3_result_error(
            pCtx, "argument of ntile must be a positive integer", -1
        );
      }
    }
    p->nTotal++;
  }
}
