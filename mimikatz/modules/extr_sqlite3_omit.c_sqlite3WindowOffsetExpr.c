
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int db; } ;
typedef TYPE_1__ Parse ;
typedef int Expr ;


 scalar_t__ IN_RENAME_OBJECT ;
 int TK_NULL ;
 int * sqlite3ExprAlloc (int ,int ,int ,int ) ;
 int sqlite3ExprDelete (int ,int *) ;
 scalar_t__ sqlite3ExprIsConstant (int *) ;
 int sqlite3RenameExprUnmap (TYPE_1__*,int *) ;

__attribute__((used)) static Expr *sqlite3WindowOffsetExpr(Parse *pParse, Expr *pExpr){
  if( 0==sqlite3ExprIsConstant(pExpr) ){
    if( IN_RENAME_OBJECT ) sqlite3RenameExprUnmap(pParse, pExpr);
    sqlite3ExprDelete(pParse->db, pExpr);
    pExpr = sqlite3ExprAlloc(pParse->db, TK_NULL, 0, 0);
  }
  return pExpr;
}
