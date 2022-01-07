
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ eStart; TYPE_4__* pFunc; int regResult; int regAccum; scalar_t__ regApp; int csrApp; struct TYPE_5__* pNextWin; } ;
typedef TYPE_1__ Window ;
typedef int Vdbe ;
struct TYPE_6__ {int funcFlags; } ;
typedef int Parse ;


 int OP_AggFinal ;
 int OP_AggValue ;
 int OP_Column ;
 int OP_Copy ;
 int OP_Last ;
 int OP_Null ;
 int OP_ResetSorter ;
 int P4_FUNCDEF ;
 int SQLITE_FUNC_MINMAX ;
 scalar_t__ TK_UNBOUNDED ;
 int VdbeCoverage (int *) ;
 int * sqlite3GetVdbe (int *) ;
 int sqlite3VdbeAddOp1 (int *,int ,int ) ;
 int sqlite3VdbeAddOp2 (int *,int ,int ,int ) ;
 int sqlite3VdbeAddOp3 (int *,int ,int ,int ,int ) ;
 int sqlite3VdbeAppendP4 (int *,TYPE_4__*,int ) ;
 scalar_t__ sqlite3VdbeCurrentAddr (int *) ;
 int sqlite3VdbeJumpHere (int *,scalar_t__) ;
 int windowArgCount (TYPE_1__*) ;

__attribute__((used)) static void windowAggFinal(Parse *pParse, Window *pMWin, int bFinal){
  Vdbe *v = sqlite3GetVdbe(pParse);
  Window *pWin;

  for(pWin=pMWin; pWin; pWin=pWin->pNextWin){
    if( (pWin->pFunc->funcFlags & SQLITE_FUNC_MINMAX)
     && pWin->eStart!=TK_UNBOUNDED
    ){
      sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regResult);
      sqlite3VdbeAddOp1(v, OP_Last, pWin->csrApp);
      VdbeCoverage(v);
      sqlite3VdbeAddOp3(v, OP_Column, pWin->csrApp, 0, pWin->regResult);
      sqlite3VdbeJumpHere(v, sqlite3VdbeCurrentAddr(v)-2);
      if( bFinal ){
        sqlite3VdbeAddOp1(v, OP_ResetSorter, pWin->csrApp);
      }
    }else if( pWin->regApp ){
    }else{
      if( bFinal ){
        sqlite3VdbeAddOp2(v, OP_AggFinal, pWin->regAccum, windowArgCount(pWin));
        sqlite3VdbeAppendP4(v, pWin->pFunc, P4_FUNCDEF);
        sqlite3VdbeAddOp2(v, OP_Copy, pWin->regAccum, pWin->regResult);
        sqlite3VdbeAddOp2(v, OP_Null, 0, pWin->regAccum);
      }else{
        sqlite3VdbeAddOp3(v, OP_AggValue, pWin->regAccum, windowArgCount(pWin),
                             pWin->regResult);
        sqlite3VdbeAppendP4(v, pWin->pFunc, P4_FUNCDEF);
      }
    }
  }
}
