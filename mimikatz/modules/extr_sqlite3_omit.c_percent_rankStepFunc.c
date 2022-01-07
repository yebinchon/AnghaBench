
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CallCount {scalar_t__ nTotal; scalar_t__ nStep; scalar_t__ nValue; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;


 int UNUSED_PARAMETER (int) ;
 int assert (int) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 scalar_t__ sqlite3_value_int64 (int *) ;

__attribute__((used)) static void percent_rankStepFunc(
  sqlite3_context *pCtx,
  int nArg,
  sqlite3_value **apArg
){
  struct CallCount *p;
  UNUSED_PARAMETER(nArg); assert( nArg==1 );

  p = (struct CallCount*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ){
    if( p->nTotal==0 ){
      p->nTotal = sqlite3_value_int64(apArg[0]);
    }
    p->nStep++;
    if( p->nValue==0 ){
      p->nValue = p->nStep;
    }
  }
}
