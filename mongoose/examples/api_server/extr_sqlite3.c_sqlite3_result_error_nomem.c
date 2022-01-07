
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {TYPE_4__ s; int isError; } ;
typedef TYPE_2__ sqlite3_context ;
struct TYPE_5__ {int mallocFailed; int mutex; } ;


 int SQLITE_NOMEM ;
 int assert (int ) ;
 int sqlite3VdbeMemSetNull (TYPE_4__*) ;
 int sqlite3_mutex_held (int ) ;

void sqlite3_result_error_nomem(sqlite3_context *pCtx){
  assert( sqlite3_mutex_held(pCtx->s.db->mutex) );
  sqlite3VdbeMemSetNull(&pCtx->s);
  pCtx->isError = SQLITE_NOMEM;
  pCtx->s.db->mallocFailed = 1;
}
