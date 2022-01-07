
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int EP_FromJoin ;
 scalar_t__ ExprHasProperty (int *,int ) ;
 int sqlite3ExprIsInteger (int *,int*) ;

__attribute__((used)) static int exprAlwaysFalse(Expr *p){
  int v = 0;
  if( ExprHasProperty(p, EP_FromJoin) ) return 0;
  if( !sqlite3ExprIsInteger(p, &v) ) return 0;
  return v==0;
}
