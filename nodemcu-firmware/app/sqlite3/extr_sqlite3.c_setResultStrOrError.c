
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int pOut; } ;
typedef TYPE_1__ sqlite3_context ;


 scalar_t__ SQLITE_TOOBIG ;
 scalar_t__ sqlite3VdbeMemSetStr (int ,char const*,int,int ,void (*) (void*)) ;
 int sqlite3_result_error_toobig (TYPE_1__*) ;

__attribute__((used)) static void setResultStrOrError(
  sqlite3_context *pCtx,
  const char *z,
  int n,
  u8 enc,
  void (*xDel)(void*)
){
  if( sqlite3VdbeMemSetStr(pCtx->pOut, z, n, enc, xDel)==SQLITE_TOOBIG ){
    sqlite3_result_error_toobig(pCtx);
  }
}
