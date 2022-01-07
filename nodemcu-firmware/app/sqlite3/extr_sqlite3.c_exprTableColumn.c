
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int i16 ;
typedef int Table ;
struct TYPE_4__ {int iTable; int iColumn; int * pTab; } ;
typedef TYPE_1__ Expr ;


 int TK_COLUMN ;
 TYPE_1__* sqlite3Expr (int *,int ,int ) ;

__attribute__((used)) static Expr *exprTableColumn(
  sqlite3 *db,
  Table *pTab,
  int iCursor,
  i16 iCol
){
  Expr *pExpr = sqlite3Expr(db, TK_COLUMN, 0);
  if( pExpr ){
    pExpr->pTab = pTab;
    pExpr->iTable = iCursor;
    pExpr->iColumn = iCol;
  }
  return pExpr;
}
