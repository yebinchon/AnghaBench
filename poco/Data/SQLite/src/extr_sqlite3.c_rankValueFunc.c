
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CallCount {scalar_t__ nValue; } ;
typedef int sqlite3_context ;


 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_int64 (int *,scalar_t__) ;

__attribute__((used)) static void rankValueFunc(sqlite3_context *pCtx){
  struct CallCount *p;
  p = (struct CallCount*)sqlite3_aggregate_context(pCtx, sizeof(*p));
  if( p ){
    sqlite3_result_int64(pCtx, p->nValue);
    p->nValue = 0;
  }
}
