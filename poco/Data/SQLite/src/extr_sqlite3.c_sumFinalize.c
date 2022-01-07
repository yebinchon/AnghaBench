
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_3__ {scalar_t__ cnt; int iSum; int rSum; scalar_t__ approx; scalar_t__ overflow; } ;
typedef TYPE_1__ SumCtx ;


 TYPE_1__* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_double (int *,int ) ;
 int sqlite3_result_error (int *,char*,int) ;
 int sqlite3_result_int64 (int *,int ) ;

__attribute__((used)) static void sumFinalize(sqlite3_context *context){
  SumCtx *p;
  p = sqlite3_aggregate_context(context, 0);
  if( p && p->cnt>0 ){
    if( p->overflow ){
      sqlite3_result_error(context,"integer overflow",-1);
    }else if( p->approx ){
      sqlite3_result_double(context, p->rSum);
    }else{
      sqlite3_result_int64(context, p->iSum);
    }
  }
}
