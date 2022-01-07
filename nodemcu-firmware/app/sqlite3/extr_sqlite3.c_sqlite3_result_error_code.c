
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int isError; int fErrorOrAux; TYPE_4__* pOut; TYPE_1__* pVdbe; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_7__ {int flags; } ;
struct TYPE_5__ {int rcApp; } ;


 int MEM_Null ;
 int SQLITE_STATIC ;
 int SQLITE_UTF8 ;
 int sqlite3ErrStr (int) ;
 int sqlite3VdbeMemSetStr (TYPE_4__*,int ,int,int ,int ) ;

void sqlite3_result_error_code(sqlite3_context *pCtx, int errCode){
  pCtx->isError = errCode;
  pCtx->fErrorOrAux = 1;



  if( pCtx->pOut->flags & MEM_Null ){
    sqlite3VdbeMemSetStr(pCtx->pOut, sqlite3ErrStr(errCode), -1,
                         SQLITE_UTF8, SQLITE_STATIC);
  }
}
