
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int w ;
struct TYPE_5__ {int* aiCol; } ;
struct TYPE_6__ {int eCode; TYPE_1__ u; int xExprCallback; } ;
typedef TYPE_2__ Walker ;
typedef int Expr ;


 int CKCNSTRNT_COLUMN ;
 int CKCNSTRNT_ROWID ;
 int checkConstraintExprNode ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3WalkExpr (TYPE_2__*,int *) ;
 int testcase (int) ;

__attribute__((used)) static int checkConstraintUnchanged(Expr *pExpr, int *aiChng, int chngRowid){
  Walker w;
  memset(&w, 0, sizeof(w));
  w.eCode = 0;
  w.xExprCallback = checkConstraintExprNode;
  w.u.aiCol = aiChng;
  sqlite3WalkExpr(&w, pExpr);
  if( !chngRowid ){
    testcase( (w.eCode & CKCNSTRNT_ROWID)!=0 );
    w.eCode &= ~CKCNSTRNT_ROWID;
  }
  testcase( w.eCode==0 );
  testcase( w.eCode==CKCNSTRNT_COLUMN );
  testcase( w.eCode==CKCNSTRNT_ROWID );
  testcase( w.eCode==(CKCNSTRNT_ROWID|CKCNSTRNT_COLUMN) );
  return !w.eCode;
}
