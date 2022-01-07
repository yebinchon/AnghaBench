
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zToken; } ;
struct TYPE_5__ {scalar_t__ op; TYPE_1__ u; } ;
typedef TYPE_2__ Expr ;


 int SQLITE_UTF8 ;
 scalar_t__ TK_FLOAT ;
 int assert (int) ;
 int sqlite3AtoF (int ,double*,int ,int ) ;
 int sqlite3Strlen30 (int ) ;

__attribute__((used)) static int exprProbability(Expr *p){
  double r = -1.0;
  if( p->op!=TK_FLOAT ) return -1;
  sqlite3AtoF(p->u.zToken, &r, sqlite3Strlen30(p->u.zToken), SQLITE_UTF8);
  assert( r>=0.0 );
  if( r>1.0 ) return -1;
  return (int)(r*134217728.0);
}
