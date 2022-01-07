
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int n; } ;
typedef TYPE_1__ CountCtx ;


 scalar_t__ SQLITE_NULL ;
 int assert (int) ;
 TYPE_1__* sqlite3_aggregate_context (int *,int) ;
 int sqlite3_aggregate_count (int *) ;
 scalar_t__ sqlite3_value_type (int *) ;

__attribute__((used)) static void countStep(sqlite3_context *context, int argc, sqlite3_value **argv){
  CountCtx *p;
  p = sqlite3_aggregate_context(context, sizeof(*p));
  if( (argc==0 || SQLITE_NULL!=sqlite3_value_type(argv[0])) && p ){
    p->n++;
  }






  assert( argc==1 || p==0 || p->n>0x7fffffff
          || p->n==sqlite3_aggregate_count(context) );

}
