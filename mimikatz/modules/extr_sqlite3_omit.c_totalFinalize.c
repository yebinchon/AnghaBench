
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_context ;
struct TYPE_3__ {double rSum; } ;
typedef TYPE_1__ SumCtx ;


 TYPE_1__* sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_double (int *,double) ;

__attribute__((used)) static void totalFinalize(sqlite3_context *context){
  SumCtx *p;
  p = sqlite3_aggregate_context(context, 0);

  sqlite3_result_double(context, p ? p->rSum : (double)0);
}
