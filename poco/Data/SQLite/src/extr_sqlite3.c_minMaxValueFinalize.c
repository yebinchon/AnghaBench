
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ flags; } ;
typedef TYPE_1__ sqlite3_value ;
typedef int sqlite3_context ;


 int sqlite3VdbeMemRelease (TYPE_1__*) ;
 scalar_t__ sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_value (int *,TYPE_1__*) ;

__attribute__((used)) static void minMaxValueFinalize(sqlite3_context *context, int bValue){
  sqlite3_value *pRes;
  pRes = (sqlite3_value *)sqlite3_aggregate_context(context, 0);
  if( pRes ){
    if( pRes->flags ){
      sqlite3_result_value(context, pRes);
    }
    if( bValue==0 ) sqlite3VdbeMemRelease(pRes);
  }
}
