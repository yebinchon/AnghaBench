
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_4__ {scalar_t__ accError; } ;
typedef TYPE_1__ StrAccum ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_TOOBIG ;
 int sqlite3StrAccumFinish (TYPE_1__*) ;
 TYPE_1__* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_free ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_error_toobig (int *) ;
 int sqlite3_result_text (int *,int ,int,int ) ;

__attribute__((used)) static void groupConcatFinalize(sqlite3_context *context){
  StrAccum *pAccum;
  pAccum = sqlite3_aggregate_context(context, 0);
  if( pAccum ){
    if( pAccum->accError==SQLITE_TOOBIG ){
      sqlite3_result_error_toobig(context);
    }else if( pAccum->accError==SQLITE_NOMEM ){
      sqlite3_result_error_nomem(context);
    }else{
      sqlite3_result_text(context, sqlite3StrAccumFinish(pAccum), -1,
                          sqlite3_free);
    }
  }
}
