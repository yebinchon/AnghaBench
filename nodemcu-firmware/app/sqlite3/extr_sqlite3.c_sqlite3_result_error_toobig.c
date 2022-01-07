
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fErrorOrAux; TYPE_4__* pOut; int isError; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_5__ {int mutex; } ;


 int SQLITE_STATIC ;
 int SQLITE_TOOBIG ;
 int SQLITE_UTF8 ;
 int assert (int ) ;
 int sqlite3VdbeMemSetStr (TYPE_4__*,char*,int,int ,int ) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_error_toobig(sqlite3_context *pCtx){
  assert( sqlite3_mutex_held(pCtx->pOut->db->mutex) );
  pCtx->isError = SQLITE_TOOBIG;
  pCtx->fErrorOrAux = 1;
  sqlite3VdbeMemSetStr(pCtx->pOut, "string or blob too big", -1,
                       SQLITE_UTF8, SQLITE_STATIC);
}
